import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  static const questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answer': ['Black', 'Red', 'Green', 'Purple']
    },
    {
      'questionText': 'Where were you born?',
      'answer': [
        'Nigeria',
        'Somewhere in Africa outside Nigeria',
        'Outside Africa',
        'Outside Earth'
      ]
    },
    {
      'questionText': 'What is the name of your first pet?',
      'answer': [
        'Something Sweet',
        'Something Sweet',
        'Something Sweet',
        'Something Sweet'
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Not First App'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              })
            ],
          )),
    );
  }
}
