import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Center(
          child: Text(questionText,
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),)
      ),
    );
  }
}
