
var building= ["CIRS", "FNH", "CEME", "WOOD", "MCLD"];
var data= [10,-20,0,4,-50];
var elem = document.getElementById("demo2")
var energy = 0;

var x = Math.abs(energy);
var image = document.getElementById('bulb2');
if (energy<0){
	document.getElementById("name2").innerHTML = building[2];
  document.getElementById("demo2").innerHTML = x + "% less";
  image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-happy.png";
}
else if (energy==0){
	document.getElementById("name2").innerHTML = building[2];
  document.getElementById("demo2").innerHTML = energy + "% less";
  image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-content.png";
}

else {
	document.getElementById("name2").innerHTML = building[2];
document.getElementById("demo2").innerHTML = energy + "% more";
elem.style.color = "Red";
image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-very-sad.png";
}



