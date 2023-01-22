import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  // --> Function states that whatever the pointer is it must be of the function.
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 42, 146, 237)),
          foregroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 236, 239, 255)),
        ),
        child: Text(answerText),
      ),
    );
  }
}
