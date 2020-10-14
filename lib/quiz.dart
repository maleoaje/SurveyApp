import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Survey extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answeredQuestion;

  Survey(
      {@required this.questions,
      @required this.answeredQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answeredQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
