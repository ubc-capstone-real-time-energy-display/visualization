
var building= ["CIRS", "FNH", "CEME", "WOOD", "MCLD"];
var data= [10,-20,0,4,-50];
var elem = document.getElementById("demo0")
var energy = -7.6;

var x = Math.abs(energy);
var image = document.getElementById('bulb0');
if (energy<0){
	document.getElementById("name0").innerHTML = building[0];
  document.getElementById("demo0").innerHTML = x + "% less";
  image.src= "../../imgs/light-happy.png";
}
else if (energy==0){
	document.getElementById("name0").innerHTML = building[0];
  document.getElementById("demo0").innerHTML = energy + "% less";
  image.src= "../../imgs/light-content.png";
}

else {
	document.getElementById("name0").innerHTML = building[0];
document.getElementById("demo0").innerHTML = energy + "% more";
elem.style.color = "Red";
image.src= "../../imgs/light-very-sad.png";
}



