import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion; // making error
  // late final VoidCallback answerQuestion;

  Quiz({this.questions, this.answerQuestion, this.questionIndex} as String) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Question(questions[_questionIndex]['questionText']),
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
