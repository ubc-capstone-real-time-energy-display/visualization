
var building= ["CIRS", "FNH", "CEME", "WOOD", "MCLD"];
var data= [10,-20,0,4,30];
var elem = document.getElementById("demo4")
var energy = data[1];

var x = Math.abs(energy);
var image = document.getElementById('bulb4');
if (energy<0){
	document.getElementById("name4").innerHTML = building[4];
  document.getElementById("demo4").innerHTML = x + "% less";
  image.src= "../../imgs/light-happy.png";
}
else if (energy==0){
	document.getElementById("name4").innerHTML = building[4];
  document.getElementById("demo4").innerHTML = energy + "% less";
  image.src= "../../imgs/light-content.png";
}

else {
	document.getElementById("name4").innerHTML = building[4];
document.getElementById("demo4").innerHTML = energy + "% more";
elem.style.color = "Red";
image.src= "../../imgs/light-very-sad.png";
}



