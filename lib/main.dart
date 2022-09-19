import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
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
  final _questions = const [
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Cats", "score": 8},
        {"text": "Birds", "score": 2},
        {"text": "Horses", "score": 3},
        {"text": "Insects", "score": 1},
        {"text": "Hamsters", "score": 5},
        {"text": "Dogs", "score": 10}
      ]
    },
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Blue", "score": 9},
        {"text": "Black", "score": 10},
        {"text": "White", "score": 2},
        {"text": "Green", "score": 8},
        {"text": "Red", "score": 7}
      ]
    },
    {
      "questionText": "How do you like your steak?",
      "answers": [
        {"text": "Rare", "score": 1},
        {"text": "Medium Rare", "score": 2},
        {"text": "Medium Well", "score": 8},
        {"text": "Well Done", "score": 10}
      ]
    }
  ];
  var _currentQuestion = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _currentQuestion = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('MyFirstApp'),
      ),
      body: _currentQuestion < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              currentQuestion: _currentQuestion)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
