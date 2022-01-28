import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/question.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answerText),
        color: Colors.blue,
        onPressed: selectHandler ,
      ),
    );
  }
}
