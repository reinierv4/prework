///////////////////////////////////////////////////////////////////////////////////////


function question2() {

  var firstQuestion = prompt('What is your name? (Yes or No)')


  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
// what if the user writes something other than yes or no? 
// they will have to answer the question again
    alert("Cats hate you for not saying (Yes or No)");
    return question2();
  }
  responses.push(firstQuestion); 
}

question2();

///////////////////////////////////////////////////////////////////////////////////////

function question3() {
  var js = prompt("In a regular summer day I : ");
  js = js.toLowerCase();
  switch (js) {
        case case1:
        option = "Look at a cats paw while it sleeps";
        break;

         case case2:
        option = "Get my moleskiner and draw my cat while it is sleeping";
        break;

        case case3:
        option = "Tickle my cat till it wakes up annoyed";
        	alert("you are a bad person")
        break;


  }
}

question3();

function question2() {

  var firstQuestion = prompt('Is a person without a cat still a person?')


  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {

    alert("Seriously just say (Yes or No)");
    return question2();
  }
  responses.push(firstQuestion); 
}

question2();


function question1() {
var name = prompt('Do you like this test?');
user.name = name;
}

question1(); // don’t forget to call the function!


function evaluate(responsesArray) {

// declare two variables to store the totals

// populate the “totals” variables from the “responsesArray”

// save the “totals” variables inside the user object

// call showResults
}

function showResults() {

// display the user results

}

// call the function, passing it the responses array
evaluate(responses);
