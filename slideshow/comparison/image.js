
var building= ["cirs", "fnh", "ceme", "wood", "mcld"];
var data= [10,-20,0,4,-50];

var energy = 10;

var x = Math.abs(energy);
var image = document.getElementById('bulb');
if (energy<0){
	document.getElementById("name").innerHTML = building[1];
  document.getElementById("demo").innerHTML = x + "% less";
  image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-happy.png";
}
else if (energy==0){
	document.getElementById("name").innerHTML = building[1];
  document.getElementById("demo").innerHTML = energy + "% less";
  image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-content.png";
}

else {
	document.getElementById("name").innerHTML = building[1];
document.getElementById("demo").innerHTML = energy + "% more";
image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-very-sad.png";
}



