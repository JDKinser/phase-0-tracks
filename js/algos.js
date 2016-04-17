
/* Attempt One */

/*
** Release 0
  * Create a function that will input an array as an argument.
  * Create empty object
  * Iterate through array 
  * call .lenght on array
  * Return the longest string within the array.
*/

/*
Tried to add strings to an object with there property value as 
length of the string but I couldnt find a way to output the name
once the highest number was chosen
*/

//function longWord(array) {
//    var names = {};
//	for (var i = 0; i < array.length; i++) {
//      names[array[i]] = array[i].length;
//    }
//  console.log(names)
//}
//
//console.log(longString(["frank", "billy bob", "mike"]))


/***********************/
/**** Final Version ****/
/***********************/

/*
** Iterate through the array
  * Check the first strings in the arrays length. It will then add it to
  * the name variable. It will then check the next strings length if its
  * its greater then the string in the variable it will replace the shorter 
  * string.
*/

var array = ["Am I long?","Not as long as me!","Well we all know I am the longest."];


function longWord(array) {
  var name = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > name.length) {
      name = array[i]
    }
  }
  return name
}

console.log(longWord(array))





