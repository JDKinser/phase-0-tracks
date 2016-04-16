// an array of four colors
// an array of four names

var colors = ["blue", "red", "green", "cayenne"];
var names = ["Wilber", "Mr. Ed", "Frank", "Sir Gallahad"];

// Write additional code that adds another color to the colors
// array, and another horse name to the horses array.

colors.push("pink");
names.push("Jerry");

// Add code that will use your two arrays to create an object. 
// The keys of your object should be horse names, and the values 
// should be colors. Your solution should be something that would 
// work for any number of colors/horses, as long as the two arrays 
// are the same length.

function makeHorses(name, color) {
  var horses = {};
  for (var i = 0; i < name.length; i++) {
    horses[name[i]] = color[i];
  };
  console.log(horses);
}

makeHorses(names, colors)

// At the bottom of your data_structures.js file, write a 
// constructor function for a car. Give it a few different 
// properties of various data types, including at least one function. 
// Demonstrate that your function works by creating a few cars with it.

function Car(brand, year, fast) {
  console.log("Our new car:", this);
  this.brand = brand;
  this.year = year;
  this.fast = fast;
  this.vroom = function() { console.log("MORE POWER!"); };
  console.log("CAR INITIALIZATION COMPLETE");
}

var aCar = new Car("Mazda", 1991, true);

aCar.vroom();

var anotherCar = new Car("Toyota", 1999, true);

console.log(anotherCar.brand);

var athirdCar = new Car("Ford", 2005, false);

console.log(athirdCar.year);


