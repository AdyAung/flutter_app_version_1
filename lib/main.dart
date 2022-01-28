import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app/question.dart';
import 'package:first_app/answer.dart';

// void main () {
//   runApp(DemoApp());
// }

void main() => runApp(DemoApp());

class DemoApp extends StatefulWidget {

  @override
  State<DemoApp> createState() {
    return _DemoAppState();
  }
}

class _DemoAppState extends State<DemoApp> {
  var _questionIndex = 0;

  final questions = const [
    //Mapping
    {
      'questionText': 'What\s your favourite computer language?',
      'answer': ['Java', 'JavaScript', 'Dart', 'C#']
    },
    {
      'questionText': 'What\s your favourite  ideal computer language?',
      'answer': ['Python', 'JavaScript', 'Dart', 'C#']
    },
    {
      'questionText': 'What\s your favourite framework?',
      'answer': ['Bootstrap', 'Flutter', 'React', 'Angular']
    },

  ];

  void _answerQuestions() {

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if(_questionIndex < questions.length){
      print('More questions');
    }else{
      print('Well done');
    }
  }



  @override
  Widget build(BuildContext context) {

    // var status = ['Hello'];
    // status.add('Max');
    // print(status);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Demo App',
          ),
          centerTitle: true,
        ),
        body: _questionIndex < questions.length ? Column(
          children: [
            //Questions
            Question(questions[_questionIndex]['questionText'] as String),
            //Answers
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer){
              return Answer(_answerQuestions, answer);
            }).toList(),
          ],
        ) : Center(
          child: Text('Well Done'),),
      ),
    );
  }
}
