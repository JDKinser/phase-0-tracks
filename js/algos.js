
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

/* Driver code */

console.log(longWord(array))


/*
** Release 1
  * Set 2 variables as objects
  * Create a function that takes both variables as arguments
  * Set var to contain the object key so they can be iterated through
  *** I feel like there is an easier way to do this I see that there is
  *** a for...in loop described on the page where I read about object.keys()
  *** but when I looked up 'in' I couldnt find a good syntax that would fit here. 
  *** More reading needed. Didnt want to fall down the rabbit hole.
  * Check to see if the property value from object1 === any in object2
  * If so return true
  * If function iterates through both object and there are no matches return false.
*/

var movie1 = {name:"how to javascript", length: 120};
var movie2 = {name:"how to ruby", length: 120};


function matchedObjects(obj1, obj2) {
	
  var property = Object.keys(obj1);

	for (var i = 0; i < property.length; i++) {
      if (obj1[property[i]] === obj2[property[i]]) {
			return true;
		}
	}
	return false;
}	

/* Driver code */

console.log(matchedObjects(movie1, movie2))


