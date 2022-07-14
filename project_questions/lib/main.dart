import 'package:flutter/material.dart';
import './question.dart';

main() {
  runApp(QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  final List<String> questions  = [
    "Which your favorite color?",
    "Which your favorite animal?",
  ];

  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      if (_selectedQuestion < 1) _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questions"),
        ),
        body: Column(
          children: <Widget>[
            Question(questionText: questions[_selectedQuestion]),
            ElevatedButton(
              onPressed: _answer,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answer,
              child: const Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {

  @override
  State<QuestionApp> createState() {
    return _QuestionAppState();
  }
}