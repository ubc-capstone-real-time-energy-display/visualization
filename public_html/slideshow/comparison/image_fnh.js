
var building= ["CIRS", "FNH", "CEME", "WOOD", "MCLD"];
var data= [10,-20,0,4,-50];
var elem = document.getElementById("demo1")
var energy = 10;

var x = Math.abs(energy);
var image = document.getElementById('bulb1');
if (energy<0){
	document.getElementById("name1").innerHTML = building[1];
  document.getElementById("demo1").innerHTML = x + "% less";
  image.src= "../../imgs/light-happy.png";
}
else if (energy==0){
	document.getElementById("name1").innerHTML = building[1];
  document.getElementById("demo1").innerHTML = energy + "% less";
  image.src= "../../imgs/light-content.png";
}

else {
	document.getElementById("name1").innerHTML = building[1];
document.getElementById("demo1").innerHTML = energy + "% more";
elem.style.color = "Red";
image.src= "../../imgs/light-very-sad.png";
}



