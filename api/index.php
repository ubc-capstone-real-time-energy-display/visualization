<?php
include "main_function.php";

define('NUMBER_OF_TIPS', 3);
define('NUMBER_OF_NEIGHBOUR_FOR_TOTEM', 6);
DEFINE('NUMBER_OF_NEIGHBOUR', 3);

$db_host = "localhost";
$db_username = "root";
$db_pass = "123";
$db_name = "rted";
$dbhandle = mysql_connect($db_host, $db_username, $db_pass) or die("Unable to connect to MySQL: ". msql_error());
$mysql_rted = mysql_select_db($db_name,$dbhandle) or die("Could not select tips");
//There are 5 tables in the database: building, building_neighbour, building_tips, energy_consumption, tips;
date_default_timezone_set('America/Vancouver');

//sample URL = http://localhost:9999/index.php?building_name=Dene, replace 'Dene' if you want to check other buildings

if (empty($_GET["building_name"])) 
{
    echo "Please give a building name<br>";
	exit;
}
//1.Get the url and building_name
$building_name = $_GET["building_name"]; //OUTPUT VALUE!!!
$building_id = buildingID($building_name);
$clock = date('H:i A');  //OUTPUT VALUE!!!

$today = get_today_lastweek()[0];
//$lastweek = get_today_lastweek()[1];
$lastweek =date('m/d/Y H:i:s', mktime(16, 45, 0, 1, 4, 2016));
$number_tips = constant('NUMBER_OF_TIPS');

if($building_name == 'Totem')
{
	$number_neighboor = constant('NUMBER_OF_NEIGHBOUR_FOR_TOTEM');
	$building_info = buildingInfo($building_id, $today, $lastweek);
	$neighbour_info = neighboursInfo($building_id,$today, $lastweek,$number_neighboor);
}
else
{
	$number_neighboor = constant('NUMBER_OF_NEIGHBOUR');
	$building_info = buildingInfo($building_id, $today, $lastweek);
	$neighbour_info = neighboursInfo($building_id,$today, $lastweek,$number_neighboor);//OUTPUT VALUE!!!
}
$tips_info = tipsInfo($building_id, $number_tips);

array_push($building_info,$clock);
$building_info = array("building_name"=>$building_info[0],"energy_usage"=>$building_info[1],"time"=>$building_info[2]);
$energy_info = array('building' => $building_info, 'neighbours' => $neighbour_info, 'tips' => $tips_info);
//echo "<pre>";
//echo json_encode($energy_info);
return json_encode($energy_info);
mysql_close($dbhandle);
?>
