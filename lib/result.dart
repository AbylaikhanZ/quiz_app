import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int results;
  final Function resetHandler;
  Result(this.results, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (results < 8) {
      resultText = "You and I most probably will not get along!";
    } else if (results < 18) {
      resultText = "You might be my acquaintance but definetly not a friend!";
    } else if (results < 25) {
      resultText = "We will be friends, for sure!";
    } else {
      resultText = "Come here bestie, give me a hug";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              margin: (EdgeInsets.only(top: 150, bottom: 40)),
              child: Text(
                resultPhrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  shadowColor: Colors.white,
                  onSurface: Colors.blue,
                  elevation: 0.0,
                  textStyle: TextStyle(
                    fontSize: 30,
                  )),
              onPressed: resetHandler,
              child: Text("Restart the Quiz?"))
        ],
      ),
    );
  }
}
