import 'package:flutter/material.dart';

// the main method
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // lets have a variable to keep track of our questons
  var position = 0;

  var questions = [
    'What\'s your name?',
    'What\' your favorite programming language'
  ];

  // function to be excecuted when button is pressed
  void answerQuestion() {
    // when this function is pressed, i need to update the index so that next question is displayed
    position = position + 1;
    print(position);
  }
  Widget build(BuildContext context) {

    return MaterialApp(home: 
    // Scaffold helps to give the basic design and structure for the app.
    Scaffold(appBar: 
        AppBar(backgroundColor: Colors.amber, title: Text('My App'),),
        // children: <widget>[] -> list of widget - generic type
        body: Column(children: [
          // accesing individual questions from the list
          // list.elementAt(int index)
          // list[index]
          Text(questions[position]),
          RaisedButton(child: Text('Answer question'),onPressed: answerQuestion),
          RaisedButton(child: Text('Answer question 2'),onPressed: () => print('Answer two chosen')),
          RaisedButton(child: Text('Answer question 3'),onPressed: () {
            // ... do some staff here
            print('Answer three chosen');
          })
        ],))
    );
  }
}

        // AppBar(backgroundColor: Colors.amber, 
        //     title: Title(color: Colors.white, 
        //     child: Text('My App')),),
        // body: Text('Hello Flutter'),));
