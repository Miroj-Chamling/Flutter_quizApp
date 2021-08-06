import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int indexNumber;
  final Function questionAnswer;

  quiz({
    required this.questions,
    required this.indexNumber,
    required this.questionAnswer,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[indexNumber]['questionText'] as String),
        //... is a spread operator in dart and is used to prevent list looping.
        ...(questions[indexNumber]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => questionAnswer(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
