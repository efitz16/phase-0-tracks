/*
Pseudocode

- Define a few varaibles that are strings that will later be passed into function
- define function reverse
	- takes as parameter a string
	- defines a new, empty string that will hold reversed string
	- FOR loop
		- loop backwards: count equals parameter's length minus 1; until count less than or equal to 0; subtract 1 from count
		- add index of parameter to new string
	- return new string
- print reverse calling each variable string
- IF/ELSE:
	- IF a variable equals the reverse of the variable reversed
		- print the variable
	- ELSE
		- print sorry message
*/

var aString = "Hello!";
var stringTwo = "Fun times are to be had.";
var stringThree = "Today is Friday (no it's not)";

function reverse(theString) {

	var newString = "";

	for (i = theString.length-1; i >= 0; i--) {
		//new_word[k] = word[i]; Why doesn't this work, provided k = 0 on line before and k++ on next line?
		newString = newString + theString[i];
	}

	return newString;
}

console.log(reverse(aString));
console.log(reverse(stringTwo));
console.log(reverse(stringThree));

if (aString == reverse(reverse(aString))) {
	console.log(aString);
} else {
	console.log("Sorry");
}