import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Pink', 'Purple', 'Orange'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Lion', 'Elephant', 'Dog'],
      },
      {
        'questionText': 'What\'s your favorite name?',
        'answers': ['Max', 'Chris', 'Jake', 'Mina'],
      },
    ];

  var _questionIndex = 0;

  void _answerQuestion() {

    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      // _questionIndex = 0;
      print('No more questions!');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex,)
        : Result(),
      ),
    );
  }
}
