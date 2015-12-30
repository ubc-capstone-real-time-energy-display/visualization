data = {};
data.building = ["CIRS", "FNH", "CEME", "WOOD", "MCLD"];
data.energy = [10, -20, 0, 4, -50];
data.happyNRGsrc = "../../imgs/light-happy.png";
data.contentNRGsrc = "../../imgs/light-content.png";
data.vsadNRGsrc = "../../imgs/light-very-sad.png";

var buffer = "";
for (i = 0; i < data.building.length; i++) {
  var compvalue, src, color;

  if (data.energy[i] < 0) {
    compvalue = Math.abs(data.energy[i]) + "% less";
    src = data.happyNRGsrc;
    color = "#70bc29"; //gren color
  } else if (data.energy[i] === 0) {
    compvalue = Math.abs(data.energy[i]) + "% less";
    src = data.contentNRGsrc;
    color = "#70bc29"; //green color
  } else {
    compvalue = Math.abs(data.energy[i]) + "% more";
    src = data.vsadNRGsrc;
    color = "#ee5737"; //red color
  }

  buffer += "<div class=\"column\" style=\"order=" + (i + 1) + "\">";
  buffer += "<h3 style=\"color: #5f5b50\">" + data.building[i] + "</h3>";
  buffer += "<img style=\"width:200px; height:300px;\" src=\"" + src + "\" />";
  buffer += "<h3 style=\"color: " + color + "\">" + compvalue + "</h3>";
  buffer += "</div>";
}
document.getElementById("datawrap").innerHTML = buffer;