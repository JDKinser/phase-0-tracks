// 7.1 syntax

// I looked to see if javascript had built in methods like ruby and I
// found that I can do it much like you can with ruby.

// Function that will take a string as an argument and reverse
// that string on output.

// Def the function and allow an input through an argument
// Word that is passed in will be split into an array of strings
// Strings within that array will then be reversed
// The strings will then be joined back into a single String
// Output will be original word reversed 

// Original functions doing each piece of the flip

/*

function split(word) {
  var split = word.split('');
  return split
}

function reverse(split) {
  var reversed = split.reverse();
  return reversed
}

function join(reversed) {
  var joined = reversed.join('');
  return joined
}

console.log(split("frank"));
console.log(reverse(split("frank")));
console.log(join(reverse(split("frank"))));

*/


// Refactored code

function awesome(name) {
  return name.split('').reverse().join('');
}

var frank = awesome("Frank");

if (1 + 1 == 2) {
	console.log(frank);
}