import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'Your score is not recorded, play again';
    if (resultScore < 10) {
      resultText = 'Kudos, You are well informed about Nigeria';
    } else if (resultScore > 20 && resultScore <= 40) {
      resultText = 'Not bad, You need to brush up on what you know about us';
    } else if (resultScore > 40 && resultScore <= 45) {
      resultText = 'Sad, you need to learn a lot more about Nigeria';
    } else if (resultScore >= 46) {
      resultText = 'Olodo, you know nothing about your country';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
