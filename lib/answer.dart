import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  // a class can also have a function property
  final Function selectHandler;
  final String answerText;

// this function will be passed from the parent
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(this.answerText),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: this.selectHandler),
    );
  }
}