import 'package:flutter/material.dart';


class Question extends StatelessWidget {
//  final String questionText; // 절대로 안 바뀔 것이다 한번 할당으로 끝  
  String questionText; // 절대로 안 바뀔 것이다 한번 할당으로 끝  

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}