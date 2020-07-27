import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalscore;
  Function restart;
  Result(this.totalscore,this.restart);

  String get resultText{
    String text;
    if(totalscore == 20){
      text="you are not bad";
    }else if(totalscore <= 25){
      text="you are ok";
    }else if(totalscore <=35){
      text="you are good";
    }else{
      text="wow you're cool";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultText,
            style: TextStyle(
              fontSize: 30,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          child: Text("restart"),
          textColor: Colors.blueAccent,
          onPressed: (){restart();},
        )
      ],
    );
  }
}
