// Challenge 7.3


//Release 0:

/*
- declare some arrays with strings of words and phrases of varying lengths
- function that finds longest phrase--takes array as parameter
	- WHILE the array length is greater than one
		- set count variable to zero
		- IF the length og the string at array at index count greater than the length of the string at the next indexin the array
			- remove the string at count + 1, which is shorter
		- ELSE
			- remove the string at count because it's shorter
		- increase count by one
- return the array
- driver code calling function with declared arrays as arguments
*/

console.log("Release 0:");

var arr1 = ["long phrase","longest phrase","longer phrase"];

var arr2 = ["the cat in the hat", "one fish two first three fish blue fish", "green eggs and ham", "Sam I am"];

var arr3 = ["To be or not to be", "whether tis nobler in the mind to bear the slings and arrows of outrageous fortune", "or to take arms against a sea of troubles", "what a piece of work is a man", "I have no spurs to prick the sides of my intent"];

function longestPhrase(arr) {
	
	while (arr.length > 1) {
		var i = 0;
		
		if (arr[i].length > arr[i+1].length) {
				longestPhrase(arr.splice(i+1, 1));
			}
		else {
				longestPhrase(arr.splice(i,1));
			}
		
		i += 1;
	}
	
	return arr;
}

console.log(longestPhrase(arr1));
console.log(longestPhrase(arr2));
console.log(longestPhrase(arr3));


// Release 1

/*
- declare objects with identifier names and values
- function to see if match-- takes two objects as parameters (2 parameters)
	- variable that checks if match found--set to 0
	- get array of identifier names using special code for objects one and two
	- two FOR loops
		- first: works with object want to compare against
		- second: works with object loop through each, comparing against set index of first
		- when loop through all of second, then increase index of first by one
		- use comparison operator on each value
		- IF find match, change value if match found variable
			- ELSE match found variable stays at zero
	- IF match found variable = 1
		- return true
	- ELSE
		- return false
- call function with declared objects as arguments
*/

console.log("Release 1:");

var str = {name: "Steven", age: 54};

var str2 = {name: "Tamir", age: 54};

var objH = {name: "John", age: 7};

var objG = {name: "Lenny", age: 16};

function isMatch(obj1, obj2) {

	obj1Keys = Object.keys(str);
		
	obj2Keys = Object.keys(str2);
	
	var matchFound = 0;
	
	for (var i = 0; i < obj1Keys.length; i++) {
		for (var k = 0; k < obj2Keys.length; k++) {
			console.log(obj1[obj1Keys[i]]);
			console.log(obj2[obj2Keys[k]]);
			if (obj1[obj1Keys[i]] == obj2[obj2Keys[k]]) {
				matchFound = 1;
			} else {
				matchFound = 0;
			}
		}
	}
	
	if (matchFound == 1) {
			return true;
		} else {
			return false;
		}

}

console.log(isMatch(str, str2));
console.log(isMatch(objH, objG));

// Release 2

/*
Pseudocode: 
- function that finds a random array--one paramter that takes a length of how long you want your array to be
	- declare empty array
	- declare string that's alphabet
	- FOR each count (start at zero) while it's less than desired length (parameter)
		- word empty
		- FOR second count as long as less than randomly generated length btwn 1 and 10
			- word equals first word plus random letter of alphabet (find by choosing random index of alphabet string)
		- push word into array
	- return array with random words

- FOR a count so long as less than 10 (do 10 times)
	- declare empty array
	- array length is randomly chosen--at least 1, at most 11
	- pass array into function
	- print array
	- pass array into Release 0 longest phrase function
*/

console.log("Release 2:");

function randomArray(len) {
	
	arr = [];
	
	alphabet = "abcedfghijklmnopqrstuvwxyz";
	
	for (var i = 0; i < len; i ++) {
		
		word_i = "";
		
		for (var k = 0; k < (Math.floor(Math.random() * 10) + 1); k++) { // Random generator here calculates length of word
			word_i = word_i + alphabet[Math.floor(Math.random() * 26)]; // calculates random letter of the alphabet
		}
		
		arr.push(word_i);
	}
	
	return arr;
}

for (var j = 0; j < 10; j ++) {

	arr = [];

	arr = randomArray(Math.floor(Math.random() * 11) + 1); // calculates randomly length of array (i.e. how many words in the array)--can have at most 11 words and at least 1
	
	console.log(arr);
	
	console.log(longestPhrase(arr));
}
