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
