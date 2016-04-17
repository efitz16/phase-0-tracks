var colors = ["blue", "red", "iridescent green", "purple"];

var names = ["Bob", "Ed", "Jane", "Tom"];

colors.push("yellow");

names.push("Steve");

var horses = {};

if (names.length == colors.length) {
  for(var i = 0; i <names.length; i++) {
  	horses[names[i]] = colors[i];
  }
} else {
  console.log("Sorry arrays are different lengths");
}

console.log(horses);