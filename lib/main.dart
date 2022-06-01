import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final questions = [
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

    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length ? Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList() // ... 은 리스트 내부를 밖으로 꺼내 주는 것 
          ],
        ) : Center(child: Text('You did it!'),),
      ),
    );
  }
}
