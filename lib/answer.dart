import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 4, 0, 253), onPrimary: Colors.green),
          onPressed: selectHandler,
          child: Text(answerText)),
    );
  }
}
