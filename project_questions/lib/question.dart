import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({this.questionText});

  final String? questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        questionText!,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
