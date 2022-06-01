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
        'answers': [
          {'text': 'Black', 'score':10}, 
          {'text':'Pink', 'score':7}, 
          {'text': 'Purple', 'score':5}, 
          {'text':'Orange', 'score':3}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
            {'text':'Rabbit', 'score':10}, 
            {'text':'Lion', 'score':7}, 
            {'text':'Elephant','score':5}, 
            {'text':'Dog','score':3}
          ],
      },
      {
        'questionText': 'What\'s your favorite name?',
        'answers': [
            {'text':'Max','score':10}, 
            {'text':'Chris','score':7}, 
            {'text':'Jake','score':5}, 
            {'text':'Mina','score':3}
          ],
      },
    ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {

    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

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
        : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
