<?php
//devide an hour to 0, 15,30,45 mins
function matching_minute()
{
	$minute = 0;
	if(date("i") < 15)
	{
		$minute = 0;
	}
	elseif(date("i") < 30 && date("i") >= 15)
	{
		$minute = 15;
	}
	elseif(date("i") < 45 && date("i") >= 30)
	{
		$minute = 30;
	}
	else
	{
		$minute = 45;
	}
	return($minute);
}

//get the time of today and lastweek
function get_today_lastweek()
{	
	//unix time to date-> m/d/Y H:i:s
	//$today_temp = time();
	//$today3 = date('m/d/Y H:i:s',$today_temp);
	//$month = date('m', strtotime($today);
	//date is a string
	if(date('I') == 1 && date('I', mktime(1, 0, 0, date("m"), date("d"), date("Y")))== 0)
	{
		$date_dst1 = date('dH');
	}
	elseif(date('I') == 0 && date('I', mktime(1, 0, 0, date("m"), date("d"), date("Y")))== 1)
	{
		$date_dst0 = date('dH');
	}

	//modify the time as DST appears and effact the first week only
	if(date('I') == 1 && date('m') == 03 && date('dH') < ($date_dst1+700))
	{
		$today = date('m/d/Y H:i:s', mktime(date("H")-1, matching_minute(), 0, date("m"), date("d"), date("Y")));
		$lastweek = date('m/d/Y H:i:s', mktime(date("H"), matching_minute(), 0, date("m"), date("d")-7, date("Y")));
	}
	elseif(date('I') == 0 && date('m') == 10 && date('dH') < $date_dst0+700)
	{
		$today = date('m/d/Y H:i:s', mktime(date("H")+1, matching_minute(), 0, date("m"), date("d"), date("Y")));
		$lastweek = date('m/d/Y H:i:s', mktime(date("H"), matching_minute(), 0, date("m"), date("d")-7, date("Y")));
	}	
	else
	{
		$today = date('m/d/Y H:i:s', mktime(date("H"), matching_minute(), 0, date("m"), date("d"), date("Y")));
		$lastweek = date('m/d/Y H:i:s', mktime(date("H"), matching_minute(), 0, date("m"), date("d")-7, date("Y")));
	}

	//echo $today.'</br>'.$lastweek.'</br>';
	$time = array($today, $lastweek);
	//echo $time[0].'<br>'.$time[1];
	//Time is an array include [0]-> today & [1]-> lastweek
	return $time;
}

//function building ID matching
//return building id;
function buildingID($building_name)
{
	$result = mysql_query("SELECT id FROM building WHERE name = '".$building_name."'");
	if(!$result)
	{
		die('Invalid query: ' .mysql_error().'<br>');
	}
	$id = mysql_fetch_assoc($result);
	if(is_bool($id))
	{
		die('Building name:'.$building_name.' is not in the list');
	}
	return $id['id'];
} 

//given building ID to find building name
function buildingName($building_id)
{
	$result = mysql_query("SELECT name FROM building WHERE id = '".$building_id."'");
	if(!$result)
	{
		die('Invalid query: ' .mysql_error().'<br>');
	}
	$name = mysql_fetch_assoc($result);
	if(is_bool($name))
	{
		die('Building id: '.$building_id.' is not in the list');
	}
	return $name['name'];
} 

//missing data function
function data_missing($building_id, $time)
{ 
	//If data is missing, Then option 1: update data by using last energy consumption assume timestamp and building id exist (What I used)
	//						   option 2: add an avg. energy consumption per 15 mins on the previous usage (havent wrote it)
	
	/*
	Data miss: 1. building id doesnt exist, die
			   2. timestamp doesnt exist but building id exists, die or ask for wait a moment
			   3. energy = NULL or 0, go to previous timestamp and use that energy to update this one;
	return latest energy usage 
	*/
	if(!mysql_query("SELECT * FROM energy_consumption WHERE building_id = '".$building_id."'"))
	{
		die('Invalid query: ' .mysql_error().'<br>');
	}
	if(is_bool(mysql_fetch_assoc(mysql_query("SELECT * FROM energy_consumption WHERE building_id = '".$building_id."'"))))
	{
		$building_name = buildingName($building_id);
		die("No building name :".$building_name." in energy consumption table");
	}
	elseif(is_bool(mysql_fetch_assoc(mysql_query("SELECT * FROM energy_consumption WHERE timestamp = '".$time."' AND building_id = '".$building_id."'"))))
	{
		$building_name = buildingName($building_id);
		die("No timestamp data : ". $time. " of building name :".$building_name);
	}
	else
	{
		$var = mysql_fetch_array(mysql_query("SELECT energy FROM energy_consumption WHERE timestamp = '".$time."' AND building_id = '".$building_id."'"));
		$new_time = $time;
		if($var['energy'] == NULL ||$var['energy'] == 0)
		{
			$time = strtotime($new_time) - 15*60;
			$new_time = date('m/d/Y H:i:s',$time);
			//echo 'new time is '.$new_time.'<br>';
			$var = mysql_fetch_array(mysql_query("SELECT energy FROM energy_consumption WHERE timestamp = '".$new_time."' AND building_id = '".	$building_id."'"));
			$update_data = "UPDATE energy_consumption SET energy = '".$var['energy']."' WHERE timestamp = '".$new_time."' AND building_id = '".$building_id."'";
			if (!mysql_query($update_data))
			{
				die("Error updating record: " . mysql_error());
			}
		}
	}
	$test = str_replace(",", "", $var["energy"]);
	return $test;
}

//calculate the percentage of the energy consumption comparing between today and lastweek
function energy_usage_total($building_id, $today, $lastweek)
{
	//get the energy consumption of the building from the energy_consumption
	//return $energy_usage_today_total and $energy_usage_lastweek_total
	$month_today = date('m', strtotime($today));
	$day_today = date('d', strtotime($today));
	$year_today = date('Y', strtotime($today));
	$month_lastweek = date('m', strtotime($lastweek));
	$day_lastweek = date('d', strtotime($lastweek));
	$year_lastweek = date('Y', strtotime($lastweek));
	
	$today_base = date('m/d/Y H:i:s', mktime(0, 00, 0, $month_today, $day_today, $year_today));
	$lastweek_base = date('m/d/Y H:i:s', mktime(0, 00, 0, $month_lastweek, $day_lastweek, $year_lastweek));

	//check if data is NULL or 0, die / return latest usage / return original usage
	//the returned value is a string
	$energy_usage_today_base = data_missing($building_id, $today_base);
	$energy_usage_lastweek_base = data_missing($building_id, $lastweek_base);
	$energy_usage_today = data_missing($building_id, $today);
	$energy_usage_lastweek = data_missing($building_id, $lastweek);
	//echo '<pre>Today @ 00:00 use:'.$energy_usage_today_base.'<br>Lastweek @ 00:00 use:'.$energy_usage_lastweek_base.'<br>Today now use: '.$energy_usage_today.'<br>Lastweek now use:'.$energy_usage_lastweek.'<pre>';
	
	//calculate the percentage comparing today's to the lastweek's 
	$energy_usage_today_total = $energy_usage_today - $energy_usage_today_base;
	$energy_usage_lastweek_total = $energy_usage_lastweek - $energy_usage_lastweek_base;

	return array($energy_usage_today_total, $energy_usage_lastweek_total);
}

//calculate percentage 
function buildingInfo($building_id,$today, $lastweek)
{
	//$building_name == 'Totem', else other buildings
	//return building infomation including: $percentage (example: -/+ 10) and buidling name
	$builing_name = buildingName($building_id);
	if($building_id == 15)
	{
		$usage_Dene = energy_usage_total(4, $today, $lastweek);
		$usage_Nootka =energy_usage_total(3, $today, $lastweek);
		$usage_Ritsmeikan = energy_usage_total(6, $today, $lastweek);
		$usage_Salish = energy_usage_total(2, $today, $lastweek);
		$usage_Haida = energy_usage_total(1, $today, $lastweek);
		$usage_Shuswap = energy_usage_total(5, $today, $lastweek);
		$percentage = round(100* ($usage_Dene[0]+$usage_Nootake[0]+$usage_Ritsmeikan[0]+$usage_Salish[0]+$usage_Haida[0]+$usage_Shuswap[0]-$usage_Dene[1]-$usage_Nootake[1]-$usage_Ritsmeikan[1]-$usage_Salish[1]-$usage_Haida[1]-$usage_Shuswap[1]) / ($usage_Dene[1]+$usage_Nootake[1]+$usage_Ritsmeikan[1]+$usage_Salish[1]+$usage_Haida[1]+$usage_Shuswap[1]));
	}
	else
	{
		$usage = energy_usage_total($building_id, $today, $lastweek);
		$percentage = round(($usage[0] - $usage[1]) / $usage[1] * 100);
	}
	$building_info = array($builing_name,$percentage);
	return $building_info;
}

//function used to generate random neighbours from a list of surrending neighbours
function rand_generator($neighbour_list, $quantity)
{
	$new_neighbour_list = array();
	shuffle($neighbour_list);
	if($quantity < count($neighbour_list))
	{
		for($y = 0; $y < $quantity; $y++)
		{
			array_push($new_neighbour_list, $neighbour_list[$y]);
		}
	}
	else
	{
		$new_neighbour_list = $neighbour_list;	
	}
	return $new_neighbour_list;
}
//generate surrounding buildings or the same type buildings
function neighboursInfo($building_id,$today, $lastweek,$quantity)
{
	//option 1: -compare to numbers of surrounding buildings
	//			-set var: Quantity = 3 surrounding buildings
	//return an 2d array including: building name(string) and energy consumption(float)
	$neighbour_list= array();
	$neighbour_info = array();
	$result = mysql_query("SELECT * FROM building_neighbour WHERE building_id = '".$building_id."'");
	if(!$result)
	{
		die('Invalid query: ' .mysql_error().'<br>');
	}
	while($var = mysql_fetch_assoc($result)) 
	{
		$id = intval($var['neighbour_id']);
		array_push($neighbour_list, $id);
	}
	$neighbour_list = rand_generator($neighbour_list, $quantity);
	for($z = 0; $z < count($neighbour_list); $z++)
	{
		
		$bid_info = buildingInfo($neighbour_list[$z],$today, $lastweek);
		$bid_info = array('name' => $bid_info[0],'energy_usage'=>$bid_info[1]);
		array_push($neighbour_info, $bid_info);
		
	}
	return $neighbour_info;
	/*
	//option 2: compare to the same type buildings
	else{}
	*/
	//return array($neighbour_name, $energy_usage_in_percentage);
}

//generate related tips
function tipsInfo($building_id,$quantity)
{
	/*
	0. $building_id
	1. tips = "SELECT * FROM tips JOIN "
	2. i = generate_random_number
	3. return tips in 2d array: image_url,title, subtitle,color_title,subtitle
	*/
	$tips_info = array();
	$new_tips_info = array();
	
	$sql ='SELECT  tips.title, tips. subtitle, tips.image_url, tips.color_title, tips.color_subtitle FROM building_tips, tips  WHERE building_tips.tips_id = tips.id AND building_tips.building_id = '.$building_id.'';
	$retval = mysql_query($sql);
	if(!$retval)
	{
		die('Could not get data: ' . mysql_error());
	}	
	while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
	{
		$tips_array = array('imageURL'=>$row['image_url'],'title'=>$row['title'],'subtitle'=>$row['subtitle'],'color_title'=>$row['color_title'],'color_subtitle'=>$row['color_subtitle']);
		array_push($tips_info, $tips_array);
		//echo 'Title: '.$row['title'].'<br>Subtitle: '.$row['subtitle'].'<br>image URL: '.$row['image_url'].'<br>color title: '.$row['color_title'].'<br>color subtitle: '.$row['color_subtitle'].'<br>';
	}
	shuffle($tips_info);
	if($quantity < count($tips_info))
	{
		
		for($n = 0; $n < $quantity; $n++)
		{

			array_push($new_tips_info, $tips_info[$n]);
		}
	}
	else
	{
		$new_tips_info = $tips_info;	
	}
	return $new_tips_info;
}
?>
