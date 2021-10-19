import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function(int) answerQuestion;

  Widget getAnswerWidgets(List<Map<String, dynamic>> strings) {
    List<Answer> answerList = [];
    for (var i = 0; i < strings.length; i++) {
      var string = strings[i];
      int score = string['score'];
      String text = string['text'];
      answerList.add(Answer(() => answerQuestion(score), string['text']));
    }
    return Column(children: answerList);
  }

  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionIndex]['questionText'] as String),
        ),
        getAnswerWidgets(
            questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
      ],
    );
  }
}
