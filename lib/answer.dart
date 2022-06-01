import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child :RaisedButton(
              color: Color.fromARGB(255, 36, 109, 168),
              child: Text('Answer 1'),
              onPressed: selectHandler,
            ),
    );
  }
}