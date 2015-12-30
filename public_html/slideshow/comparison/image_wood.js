
var building= ["CIRS", "FNH", "CEME", "WOOD", "MCLD"];
var data= [10,-20,0,4,-50];
var elem = document.getElementById("demo3")
var energy = 10;

var x = Math.abs(energy);
var image = document.getElementById('bulb3');
if (energy<0){
	document.getElementById("name3").innerHTML = building[3];
  document.getElementById("demo3").innerHTML = x + "% less";
  image.src= "../../imgs/light-happy.png";
}
else if (energy==0){
	document.getElementById("name3").innerHTML = building[3];
  document.getElementById("demo3").innerHTML = energy + "% less";
  image.src= "../../imgs/light-content.png";
}

else {
	document.getElementById("name3").innerHTML = building[3];
document.getElementById("demo3").innerHTML = energy + "% more";
elem.style.color = "Red";
image.src= "../../imgs/light-very-sad.png";
}



