import 'package:flutter/material.dart';


class Question extends StatelessWidget {
//  final String questionText; // 절대로 안 바뀔 것이다 한번 할당으로 끝  
  String questionText; // 절대로 안 바뀔 것이다 한번 할당으로 끝  

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText, 
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    ); 
  }
}