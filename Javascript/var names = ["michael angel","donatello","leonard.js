	var names = ["michael angel","donatello","leonardo","rafael"];
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