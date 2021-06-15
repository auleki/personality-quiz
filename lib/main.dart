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
    if (_questionIndex < questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
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
      'questionText': 'What do you think about Nigeria?',
      'answer': [
        'There is still hope if we can fight',
        'No more hope, time to abandon ship',
        'Join biafra',
        'Nigeria is dead, long live UAR'
      ]
    },
    {
      'questionText': 'Sofiat will you marry me?',
      'answer': ['Yes', 'No']
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  })
                ],
              )
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
