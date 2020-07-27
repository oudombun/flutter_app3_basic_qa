import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  Function answerQuestion;
  String answerText;

  Answer(this.answerQuestion,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[700],
        onPressed: answerQuestion,
        child: Text(answerText,style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),),
      ),
    );
  }
}
