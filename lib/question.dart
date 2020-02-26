import 'package:flutter/material.dart';

class Question extends StatelessWidget {

// It's a good convention in dart to mark properties in a class as final
// Doing this tells dart that the property won't change after the class has been instantiated
  // property
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity, // occupies as much space as the device width
    margin: EdgeInsets.all(10), // creates margin all round the Text widget
    child:Text(questionText,
    style: TextStyle(fontSize: 28,), // set font size for the Text to 28px
    textAlign: TextAlign.center,));
  }
}