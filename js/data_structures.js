var colors = ["blue", "red", "iridescent green", "purple"];

var names = ["Bob", "Ed", "Jane", "Tom"];

colors.push("yellow");

names.push("Steve");

var horses = {};

if (names.length == colors.length) {
  for (var i = 0; i <names.length; i++) {
  	horses[names[i]] = colors[i];
  }
} else {
  console.log("Sorry arrays are different lengths");
}

console.log(horses);

function Car(name, isFast, color, horsepower) {
  console.log("Your new car", this);
  
  this.name = name;
  this.isFast = isFast;
  this.color = color;
  this.horsepower = horsepower;
  
  this.start = function() { console.log("Rev!!!"); };
  
  console.log("CAR INITIALIZATION COMPLETE");

}

console.log("Let's build a car ...");
var aNewCar = new Car("Ford", true, "red", 240);
console.log(aNewCar);
console.log("Starting the car...");
aNewCar.start();
console.log("----")

console.log("Let's build a car ...");
var anotherNewCar = new Car("Honda", false, "white", 180);
console.log(anotherNewCar);
console.log("Starting the car...");
anotherNewCar.start();
console.log("----")

console.log("Let's build a car ...");
var yetAnotherNewCar = new Car("BMW", true, "navy", 330);
console.log(yetAnotherNewCar);
console.log("Starting the car...");
yetAnotherNewCar.start();
console.log("----")