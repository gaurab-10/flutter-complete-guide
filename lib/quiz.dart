import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; //list
  final int questionIndex; // index
  final Function answerQuestion; // answer widget

// constructor
  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]["questionText"],
      ),
      ...(questions[questionIndex]['answers'] as List<Map>).map((answer) {
        return Answer(() => answerQuestion(answer["score"]), answer['text']);
      })
    ]);
  }
}
