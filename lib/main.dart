import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    // print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print(_totalScore);
    }
  }
  // {
  //   'questionText': 'Which country is the giant of Africa?',
  //   'answers': ["Mali", "Nigeria", "Madagascar", "Ghana"]
  // },

  static const _questions = [
    {
      'questionText': 'Which country is the giant of Africa?',
      'answers': [
        {'text': 'Mali', 'score': 10},
        {'text': 'Nigeria', 'score': 0},
        {'text': 'Madagascar', 'score': 7},
        {'text': 'Ghana', 'score': 3},
      ]
    },
    {
      'questionText': 'What is the color of our flag?',
      'answers': [
        {'text': 'Green, White, Green', 'score': 0},
        {'text': 'Red, White, Red', 'score': 7},
        {'text': 'White, Green, White', 'score': 4},
        {'text': 'Blue, Black, Yello', 'score': 10},
      ]
    },
    {
      'questionText': 'Which president died and made his vice the president?',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Yar\' adua', 'score': 3},
        {'text': 'Abacha', 'score': 8},
        {'text': 'Olusegun Obasanjo', 'score': 10},
      ]
    },
    {
      'questionText': 'What is the current capital of Nigeria?',
      'answers': [
        {'text': 'Lagos', 'score': 4},
        {'text': 'Jos', 'score': 8},
        {'text': 'Benue', 'score': 10},
        {'text': 'Abuja', 'score': 0},
      ]
    },
    {
      'questionText': 'Which Nigerian won a grammy?',
      'answers': [
        {'text': '9ice', 'score': 7},
        {'text': 'Wizkid', 'score': 10},
        {'text': 'Burna Boy', 'score': 0},
        {'text': 'Angelique Kuji', 'score': 4},
      ]
    },
    {
      'questionText': 'Sofiat will you marry me?',
      'answers': ['Yes', 'No']
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
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
