import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final Object? questionText;
  // constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double
          .infinity, // this specifies that the container can take as much as space as it can gets.
      margin: EdgeInsets.all(10),
      child: Text(
        questionText.toString(),
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
