var dicemaker = function(min,max) {
	a  =  Math.floor(Math.random() * ((max+1) - min)) + min;
	return a
}



var vikings = ["Ignacio","Nacho","Magnus","Satwat","Daniel","Tristan","Fernanda","Alejandro",
"Reniere","Marcos","Lluis","Raul","Alfonso","Isaura","Claudia","Alvaro","Alberto Marcos"]

generateOdds = function(hp_1, hp_2){
  var winnerA = []
  var winnerB =[]
  var tie = []
  
  for(var i = 0; i<100000; i++){
    fightTillDead();
  }
  
  function fightTillDead(){
    var health1 = hp_1;
    var health2= hp_2;

    while(health1>0 && health2>0){
      health1-=strengthGnrator();
      health2-=strengthGnrator();
     }

     if(health1<0 && health2<0){
        tie.push('1')
      }else if(health1<0){
        winnerA.push('1')
     }else{
        winnerB.push('1')
     }
    
  }

  var HomeOdd = (1/(winnerA.length/100000)/1.1).toFixed(2)
  var TieOdd = (1/(tie.length/100000)/1.1).toFixed(2)
  var AwayOdd = (1/(winnerB.length/100000)/1.1).toFixed(2)

  return{
    home: HomeOdd,
    tie: TieOdd,
    away: AwayOdd
  }
}

function nameGenerator(){
  return vikings[dicemaker(0,16)];
}

function strengthGnrator(){
  return dicemaker(1,3);
}

function hpGnerator(){
	return dicemaker(5,10)* 10;
}

function damageFormula(strength){
	damage = Math.floor(dicemaker(1,3) * strength);
	return damage;
}

damageFormula = function(){
  damage = dicemaker(1,3) * strength;
}

var Viking = function(name,strength) {
    this.name = name;
    this.health = hpGnerator();
    this.strength =  strength *  Math.floor((Math.random() * 5)+ 1);
  }

  var vikingA = new Viking(nameGenerator(), strengthGnrator());
  var vikingB = new Viking(nameGenerator(), strengthGnrator());
  console.log(vikingA.name + ':' + ' hp: ' + vikingA.health , vikingA.strength + ' |  | ' +  vikingB.name + ':' + ' hp: ' + vikingB.health , vikingB.strength)

var Pit = function(){

      this.start = function(player1, player2, round) {


		  console.log("trial by combat begins! \n \n");



            while (round >= 0) {

                  if (player1.health - player2.strength <= 0) {
                          console.log('\n Judge: ' + player1.name + ' lost! With ' + player1.health + ' health left'  +  ' against ' + player2.name );
                          return;
                  } else {
                      player1.health = player1.health - player2.strength;
				//	  console.log()
                  }

                  if (player2.health - player1.strength <= 0) {
					  console.log( '\n Judge: ' + player2.name + ' lost! With ' + player2.health + ' health left'  +  ' against ' + player1.name );

                          return;
                  } else {
                      player2.health = player2.health - player1.strength;
                  }
				  console.log(player1.name + ' has hit ' + player2.name + ' leaving him with ' + player2.health + ' hp left' + " |  | " + player2.name + ' has hit ' + player1.name + ' leaving him with ' + player1.health + ' hp left')
                      round--;
            } // end while
           console.log('\n TIE');
        }
}

var fight = new Pit;

setTimeout(function(){ fight.start(vikingA,vikingB,10); }, 22000);


//damageFormula();
//hpGenerator();
