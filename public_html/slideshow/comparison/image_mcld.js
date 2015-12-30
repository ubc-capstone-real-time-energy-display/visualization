
var building= ["CIRS", "FNH", "CEME", "WOOD", "MCLD"];
var data= [10,-20,0,4,30];
var elem = document.getElementById("demo4")
var energy = data[1];

var x = Math.abs(energy);
var image = document.getElementById('bulb4');
if (energy<0){
	document.getElementById("name4").innerHTML = building[4];
  document.getElementById("demo4").innerHTML = x + "% less";
  image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-happy.png";
}
else if (energy==0){
	document.getElementById("name4").innerHTML = building[4];
  document.getElementById("demo4").innerHTML = energy + "% less";
  image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-content.png";
}

else {
	document.getElementById("name4").innerHTML = building[4];
document.getElementById("demo4").innerHTML = energy + "% more";
elem.style.color = "Red";
image.src= "https://raw.githubusercontent.com/ubc-capstone-real-time-energy-display/visualization/master/public_html/imgs/light-very-sad.png";
}



