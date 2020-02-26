import 'package:flutter/material.dart';

// importing a widget in flutter
import './question.dart';
import './answer.dart';

// the main method
void main() {
  return runApp(MyApp());
}

// Stateless Widgets can't always change thus we need to rename to Stateful widget
class MyApp extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

} 

// Adding underscore ensures that our class/ variable is private thus csn only be accessed within this particular file
class _MyAppState extends State<MyApp> {
  // lets have a variable to keep track of our questons
  var _position = 0;

  var questions = [
    // Map of questions
    { 
      'questionText': 'What\'s your name?',
      'answers': ['Isaac','James','Tom','Quinter']
    },
        { 
      'questionText': 'What\' your favorite programming language?',
      'answers': ['Java','Python','C+','Javascript']
    },
    { 
      'questionText': 'What\'s your favorite meal?',
      'answers': ['Chapati','Ugali','Samaki','Fish']
    }
  ];

  // function to be excecuted when button is pressed
  void _answerQuestion() {
    // when this function is pressed, i need to update the index so that next question is displayed
    setState(() {
        _position = _position + 1;
    });
    print(_position);
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
          Question(questions[_position]['questionText']),
          // for each question, map through appropriate answers
          // dart has no way of detecting that whatever we are mapping is a List thus we need to tell it
          // spread operator allows us to pull of each and every individual value out of a list into the parent list
          ...(questions[_position]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion , answer);
          }).toList() // map returns an iterable rather than a list thus the need to convert it into a list
        ],))
    );
  }
}

        // AppBar(backgroundColor: Colors.amber, 
        //     title: Title(color: Colors.white, 
        //     child: Text('My App')),),
        // body: Text('Hello Flutter'),));


        //  RaisedButton(child: Text('Answer question 2'),onPressed: () => print('Answer two chosen')),
        //   RaisedButton(child: Text('Answer question 3'),onPressed: () {
        //     // ... do some staff here
        //     print('Answer three chosen');
        //   })
