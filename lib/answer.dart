import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function optionHandler;
  final String answerText;

  Answer(this.optionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: optionHandler,
      ),
    );
  }
}
