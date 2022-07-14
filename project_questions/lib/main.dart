import 'package:flutter/material.dart';
import './question.dart';
import './response.dart';

main() {
  runApp(QuestionApp());
}

class _QuestionAppState extends State<QuestionApp> {
  final List<Map<String, Object>> questions = [
    {
      "title": "Which your favorite color?",
      "answers": ["Black", "Red", "Green", "Yellow"],
    },
    {
      "title": "Which your favorite animal?",
      "answers": ["Lion", "Dog", "Tiger", "Rabbit"],
    },
    {
      "title": "Which your favorite friend?",
      "answers": ["Tutu", "Joujou", "Teteu", "Jucier"],
    },
  ];

  var _selectedQuestion = 0;

  void _answer() {
    setState(() {
      if (_selectedQuestion < 2) _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listAnswers =
        questions[_selectedQuestion].cast()["answers"].map((text) => Response(
              onPressedFunction: _answer,
              responseText: text,
            ));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questions"),
        ),
        body: Column(
          children: <Widget>[
            Question(
                questionText: questions[_selectedQuestion]["title"].toString()),
            ...listAnswers
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
