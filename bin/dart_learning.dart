

import 'dart:ffi';
import 'dart:html_common';

void main(){
//  print('Hello, Dart');
//  print(3 + 2 / 5);

/*
int x = 55;
int y = 43;

int sum = x + y;
int mult = x * y;
int subtr =  x - y;



  print("Sum: \n");
  print(sum);
  print("\n");
  print("Multiplication\n");
  print(mult);
  print('Subtractiion \n');
  print(subtr);

 */

    //Dynamic defines data type automatically!
    dynamic x = 5;
    print(x);


    int firstValue = 50;
   firstValue = firstValue + 20;
 //  print(firstValue);


  //String contaminating

  String firstLine = 'Hello,';
  String secondLine = '$firstLine World';
  print(secondLine);


  // Final can be any number because its saves before compilation
    // Final var can be setted only once
  final number = 5;

  // Const is working during compilation and its cant be dynamic lile :
    //Cannot be:
      //const time = DateTime.now(); Because we dont know what time is this will be
    //Can be:
      const numberOne = 1;


      //Optional variables can have value or can be null

      int? numberTwo = null;
      // or we can make it like this
      int? numberFour; // And its will be automatiically null
      //But cannot be like this: Because should be question sign
     // int numberThree = null;

      String? name;
      print(name?.isEmpty);

//-----------------------------------------------------------------------------------------------------------------//

    int age = 19;
    if(age >= 18){
      print('ADULT');
    }
    else{
      print('CHILD');
    }


    bool trueOrFalse;
    String? surname;

    if(surname == null){
      trueOrFalse = true;
       print(trueOrFalse);
    }
    else {
      trueOrFalse = false;
      print(trueOrFalse);
    }



    String someValue = 'Hi';

    if(someValue.startsWith('H')){
      print('HI');
    }else {
      print('NAH!');
    }

    // Ternary Condition
    String value = someValue.startsWith('H') ? 'HI!' : 'NAH';
    print(value);

    // Switch case

    switch(someValue){
      case 'Hi' :
        print('Hello!');
      case 'Hello' :
        print('Not right case!');
      default:
        print('FUCK YOU!');
    }

    String val = 'Misha';
    int agee = 20;

    switch(val) {
      case 'Misha' when agee >= 20 :
        print("Yeah thats the right case!");
      default: 
        print('Calculation!');
    }



}

