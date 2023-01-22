// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_complete_guide/quiz.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runAp
// p(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      "questionText": "What's your favourite color ?",
      "answers": [
        {"text": "Green", "score": 3},
        {"text": "Red", "score": 6},
        {"text": "Blue", "score": 10},
        {"text": "White", "score": 1},
      ],
    },
    {
      "questionText": "What's your favourite animal ?",
      "answers": [
        {
          "text": "Dog",
          "score": 3,
        },
        {
          "text": "Cat",
          "score": 6,
        },
        {
          "text": "Elephant",
          "score": 10,
        },
        {
          "text": "Rabbit",
          "score": 1,
        },
      ],
    },
    {
      "questionText": "What's your favourite food ?",
      "answers": [
        {"text": "Thai", "score": 3},
        {"text": "Indian", "score": 6},
        {"text": "Nepali", "score": 10},
        {"text": "Chinese", "score": 1},
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    // print("total score:: $_totalScore");
    //function that takes
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
