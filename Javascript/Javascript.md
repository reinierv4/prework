# Javascript Stuff

## Best of codes

	var claim;
	function claimForMarcos (country,thing) {

	claim = "In the name of " + country + " I claim this " + thing + " for Marcos!"

	return claim;

	}

	var message;

	message = claimForMarcos("Spain","Husky");

	console.log(message);
	var check = new RegExp("Husky");
	check.test(claim);

	if (check.test(claim) == true) {
	console.log("woof woof");}


## Arrays

## Normal Array

	var countries;

	countries = [];

	countries.push( "Russia", "Finland", "Morocco", "Brazil" );
	countries.push( "Canada" );
	countries.push( "Mexico", "Japan" );

	console.log(countries);

## Prints a list of the arrayed sttuff

	var killers,i;
	killers = ["Gallahad", "Siegfried","Robin","Lancelot"]
	killers.push( "Jack" );
	for (i = 0; i < killers.length; i++){console.log(killers[i]);}

	> Why does it not take "Jack"?


## Increments Backwards (Wich would mean it decreases)

Pos eso que se pone a hacerte la cuenta regresiva para lanzar varios torpedos nucleares o algo.

>for (a= 10; a> -1; a--){console.log(a);}

Logs 10,9,8,7,6,5,4,3,2,1,0


## If expressions

Esta es la configuración general para hacerse un "If" en javascript

	if (<conditional_expression>) {
	  <instructions>
	}
	[else if (<conditional_expression>) {
	  <instructions>
	}]
	...
	[else {
	  <instructions>
	}]


## Set de opciones para hacer

First it tells you wich variables you can choose and then asks you to choose form this menu

	var command = prompt('Show help for command... (prompt, alert, confirm)');

	switch (command) {
	  case 'prompt':
	    alert('Shows a modal dialog asking the user to enter a value.');
	  break;

	  case 'alert':
	    alert('this is an alert so be ALERTED.');
	  break;

	  case 'confirm':
	    alert('I confirm with an ALERT because thats what I do.');
	  break;

	  default:
	    alert('What is this' + command 'you are trying to tell me?');
	  break;
	 }

## Do various functions

	When you want to call various functions , you will be using this pretty configuration
	this is creating various functions with return math operations.

	function avg(anyArray) {
	'use strict';

	if (!Array.isArray(anyArray)) {
		anyArray = arguments;
	}

	var sum = 0;
	for (var index = 0, length = anyArray.length; index < length; index += 1) {
		sum += anyArray[index];
	}
	return sum / length;
	}

## calling objects with THIS

var computer = {
  name: 'Deep Thought',
  getTheAnswerToLife: function () {
    return console.log(this.name + ': 42');
  },
  testThis: function () {
    console.log(this === computer);
  }
};


## Markdown
Darkgreyish color I like : #555

Twitter color I like :  #1dcaff

RUBY COLLECTIONS
each aplica cosas a todo
["carrot","apples",""]
