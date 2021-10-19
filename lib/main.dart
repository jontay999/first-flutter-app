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

//underscore changes it to private class
class _MyAppState extends State<MyApp> {
  final List<Map<String, dynamic>> _questions = const [
    {
      'questionText': 'What\'s your favorite programming language?',
      'answers': [
        {'text': 'C++', 'score': 8},
        {'text': 'Python', 'score': 10},
        {'text': 'Dart', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favorite IDE?',
      'answers': [
        {'text': 'VSCode', 'score': 8},
        {'text': 'Paper', 'score': 10},
        {'text': 'Microsoft Word', 'score': 9},
        {'text': 'Sublime', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite error?',
      'answers': [
        {'text': 'SegFault', 'score': 8},
        {'text': 'Buffer Overflow', 'score': 6},
        {'text': 'Your code sucks. Try again', 'score': 3}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      // _questionIndex %= 3;
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
    });
    _totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    //this is a map class

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestions, _questions, _questionIndex)
            : Result(_totalScore, _restart),
      ),
    );
  }
}
