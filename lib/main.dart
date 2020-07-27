import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index=0;
  var _questions=[
    {
      'question':'pick your lucky color?',
      'answer':[
        {
          'text':'color 1',
          'score':10,
        },
        {
          'text':'color 2',
          'score':5,
        },
        {
          'text':'color 3',
          'score':20,
        },
      ]
    },
    {
      'question':'pick your lucky food?',
      'answer':[
        {
          'text':'food 1',
          'score':20,
        },
        {
          'text':'food 2',
          'score':10,
        },
        {
          'text':'food 3',
          'score':10,
        },
        {
          'text':'food 4',
          'score':15,
        },
      ]
    },
    {
      'question':'pick your lucky place?',
      'answer':[
        {
          'text':'place 1',
          'score':5,
        },
        {
          'text':'place 2',
          'score':10,
        },
      ]
    }
  ];

  var _totalScore=0;

  void _restartQuiz(){
    setState(() {
      _index=0;
      _totalScore=0;
    });
  }
  void _answerQuestion(int score){
    _totalScore+=score;
    setState(() {
      _index++;
    });

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          centerTitle: true,
        ),
        body: _index < _questions.length
        ? Quiz(_questions,_index,_answerQuestion)
        : Result(_totalScore,_restartQuiz),
      )
    );
  }
}
