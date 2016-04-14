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
- Store result of reversed string in variable
- IF/ELSE:
	- IF a original string equals the reverse of it reversed
		- print yes statement
		- print the reverse method with the original variable as an argument
		- print the reversed (1x) variable
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

reverseA = reverse(aString);
reverseB = reverse(stringTwo);
reverseC = reverse(stringThree);

console.log("Does the first example work?");
if (aString == reverse(reverseA)) {
	console.log("Yes:");
	console.log(reverse(aString));
	console.log(reverseA);
} else {
	console.log("Sorry");
}

console.log("Does the second example work?");
if (stringTwo == reverse(reverseB)) {
	console.log("Yes:");
	console.log(reverse(stringTwo));
	console.log(reverseB);
} else {
	console.log("Sorry");
}

console.log("Does the third example work?");
if (stringThree == reverse(reverseC)) {
	console.log("Yes:");
	console.log(reverse(stringThree));
	console.log(reverseC);
} else {
	console.log("Sorry");
}