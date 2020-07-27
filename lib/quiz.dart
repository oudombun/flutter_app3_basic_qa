import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {

  List<Map<String,Object>> questions;
  var index;
  Function answerQuestion;

  Quiz(this.questions,this.index,this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[index]['question']),
        ...(questions[index]['answer'] as List<Map<String,Object>>).map((ans){
          return Answer(() =>answerQuestion(ans['score']),ans['text']);
        }).toList()
      ],
    );
  }
}
