// Exercise variable tests

var country13;  //can be used
var 13country;  //integers before variables dont make variables
var country_13; //can be used
var country&13; //nope not possible
var ^country 		//idk what I was hoping for
var ~country13  //I dont think so 



// Exercise Singer LaLaLa

current = ""; 
for (a = 0; a < 10; a++){ 
	current += "la"; console.log(current);};

var 

 // Best Worldwide code Marcos Super Claimer

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

// Excercise BLAST OFF!!

function blastOff (n){
while (n>0){
n--;
console.log(n)
}
console.log("blasrOff!");
}
blastOff(6);


// Prepare Exercise


	var names = ["michael angel","donatello","leonardo","rafael","dartagnan"];
	var resultado = "";

	function prepare(stringArray){
		var phrase = "" ;
		
		for(i = 0; i< stringArray.length -2; i++){ 
			phrase += stringArray[i] + ", ";
		}
		
		phrase += stringArray[stringArray.length - 2] + " and " + stringArray[stringArray.length - 1];
		
		return phrase;
	}
	
	resultado = prepare(names);
	console.log(resultado);



// Results.js


var exampleArray = [ 2, -5, 10, 5, 4, -10, 0];

proces = function(array){
var results = [];

  for (var a = 0; a<array.length; a++){
    for ( var b = a; b<array.length; b++){
        if(array[a]+array[b]=== 0){
          results.push(a+ "," +b);
        }
    }

}
    console.log(results);
}
var finalResult = proces(exampleArray);


/////////////////////////////////////No es un ejercicio pero es UTIL//////////////////////////////////////

var aNumber = 7;
var evenOrOdd = (aNumber % 2 === 0) ? 'even' : 'falser than a second moon around Earth' 
console.log(aNumber + ' is ' + evenOrOdd);
VM1166:3 7 is falser than a second moon around Earth

///////////////////////////////////////////////////////////////////////////////////////////////////////////




////////////////////////////////////////// Ejercicio DNI /////////////////////////////////////////////////


function dniLetter(dni){
    var b;
    var letras_separadas;
	var lockup = 'TRWAGMYFPDXBNJZSQVHLCKE';
	var num_sep;
	var string = dni+'';
	 
	num_sep = string.split("");

	for (var c = 0; c < num_sep.length; c++){
		if(num_sep[c] < 0){result = 'Invalid parameter'}
		else if(isNaN(c) === true){result = 'Invalid parameter'}
	}

	letras_separadas = lockup.split("");
	for (var a = 0; a< letras_separadas.length; a++){
		b =  dni%23;
		var result = lockup[b];
	}
		console.log(b)


		return result;
}


console.log( dniLetter( 12345678 ) === 'Z');
console.log( dniLetter( 34667892 ) === 'S');
console.log( dniLetter( 92234488 ) === 'A');
console.log( dniLetter( -1 ) === 'Invalid parameter');
console.log( dniLetter( "A1234567" ) === 'Invalid parameter');


///////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////// EJERCICIO LENGTHS 1 //////////////////////////////////////////////////



function findLongestWord( array_words ){
	var words = array_words;
	
var respuesta = "";
for(i=0; i < words.length; i++){
if(respuesta.length < words[i].length){respuesta = words[i];}
}	
//console.log(respuesta);
return respuesta.length;
	



}

console.log( findLongestWord( ["Richie", "Joanie", "Greg", "Marcia", "Bobby"] ) ===6 );
console.log( findLongestWord( ["Blanka", "Zangief", "Chun Li", "Guile"] ) === 7 );
console.log( findLongestWord( ["Red", "Blue", "Green"] ) === 5 );



///////////////////////////////////////MEDIA/////////////////////////////////////////////////

Ejercicios 



var array_lengths = [];
array_lengths.push( findLongestWord( ["Richie", "Joanie", "Greg", "Marcia", "Bobby"]) );
array_lengths.push( findLongestWord( ["Blanka", "Zangief", "Chun Li", "Guile"] ) );
array_lengths.push( findLongestWord( ["Red", "Blue", "Green"] ) );
//<place to add more lines>, read next commented text and you will understand

console.log( "These are the longest lengths of each group: " + array_lengths );

console.log( calculateAverage(array_lengths) === 6 );
//&& "The average of longest lengths is: " + calculateAverage( array_lengths ));

function findLongestWord( array_words ){
	var words = array_words;
	var respuesta = "";
	for(i=0; i < words.length; i++){
	if(respuesta.length < words[i].length){
		respuesta = words[i];
		}
	var inzivilizao =  respuesta.length;
	}
return inzivilizao;
}


function calculateAverage( array ){
 var sumando=0;
 for(i=0; i < array.length; i++){ 
	sumando += array[i]; 
	average =  sumando/array.length;
}
	return average;
}
calculateAverage(array_lengths);

////////////////////////////////////LE FALTA RETORNAR LETRAS///////////////////////////////////////////


function charFreq( string ) {

	for(i=0; i < string.length; i++){ 
		var storedValue = string[i];
	
		var freqCounter = 0;
		for(a=0; a < string.length; a++){ 
			var comparedValue = string[a]; 
			
		if (storedValue == comparedValue){
			freqCounter = freqCounter+1;

			}
		}			
	}console.log(freqCounter);
	return freqCounter[letter];
}

counter = charFreq("abbabcbdbabdbdbabababcbcbab");
console.log( counter['a'] === 7);
console.log( counter.b === 14);
console.log( counter['c'] === 3);

counter = charFreq("xyyyxyxyxzyxyzyxyxyasdfz");
console.log( counter.x === 7 );
console.log( counter['y'] === 10 );
console.log( counter.z === 3 );
console.log( counter['a'] === 1 );
console.log( counter['s'] === 1 );
console.log( counter.d === 1 );
console.log( counter['f'] === 1 );


///////////////////////////////////////////////////ROVER MARS/////////////////////////////////////////////////



	//0  1  2  3  4  5  6  7  8  9
    //1 
    //2
    //3
    //4
    //5
    //6
    //7
    //8
    //9






var Rover = {
  position: [0,0], 
  direction: 'N'
};

function goForward(rover) {
  switch(rover.direction) {
    case 'N':
      rover.position[0]++;
      break;
    case 'E':
      rover.position[1]++;
      break;
    case 'S':
      rover.position[0]--;
      break;
    case 'W':
      rover.position[1]--;
      break;
  }
}

var movementOrders = "fffrfflfffbb";
for(i=0; i < movementOrders.length; i++){
	switch(movementOrders[i]){
	case 'f': 
	
		if(Rover.direction === 'N'){	
			Rover.direction = 'N';
				goForward(Rover);
				if(Rover.position[0] > 10){Rover.position[0] = 10;}
		
		}else{Rover.direction = 'N';}
	break;
		case 'r': 
			if(Rover.direction === 'E'){	
			Rover.direction = 'E';
				goForward(Rover);
				if(Rover.position[1] > 10){Rover.position[1] = 10;}
		
		}else{Rover.direction = 'E';}
	break;
		case 'l': 
			if(Rover.direction === 'W'){	
			Rover.direction = 'W';
				goForward(Rover);
				if(Rover.position[1] < -10){Rover.position[1] = -10;}
		
		}else{Rover.direction = 'W';}
	break;
		case 'b': 
		if(Rover.direction === 'S'){	
			Rover.direction = 'S';
				goForward(Rover);
				if(Rover.position[0] < -10){Rover.position[0] = -10;}
		
		}else{Rover.direction = 'S';}
	break;

} 
	
}
console.log(Rover.position);
////f = case n  l = case e  r = case w  b = case s

///////////////////////////////////////////////////////////////////////////////////////////////////////////
