


var a = "Look at a cats paw while it sleeps";
var b = "Get my moleskiner and draw my cat while it is sleeping";
var c = "Tickle my cat till it wakes up annoyed and bites my hand";



var user = {}
var responses = []

///////////////////////////////////////////////////////////////////////////////////////


function question1() {
var name = prompt('Do you like cats?');
user.name = name;
}

question1(); // don’t forget to call the function!




function question2() {

  var firstQuestion = prompt('Is a person without a cat still a person?');


  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true;
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false;
  } else {

    alert("Seriously just say (Yes or No)");
    return question2();
  }
  responses.push(firstQuestion);
}
question2();


function question3() {
  var js = prompt("In a regular summer day I : Look at a cats paw while it sleeps | Get my moleskiner and draw my cat while it is sleeping | Tickle my cat till it wakes up annoyed and bites my hand ");
  js = js.toLowerCase();
  switch (js) {
        case js ===  a
        option = console.log(kinda creepy dont you think?)
        break;

        case js ===  b
        option = console.log(thats good to know)
        break;

        case js === c
        option = alert("you are a bad person")

        break;


  }
}

question3();
