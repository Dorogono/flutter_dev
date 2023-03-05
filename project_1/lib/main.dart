import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIdx = 0;

  void _answerQuestion() {
    setState(() {
      if (_questionIdx == 2) {
        _questionIdx = 0;
      } else {
        _questionIdx += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Rabbit', 'Snake', 'Cat'],
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['Me', 'Me', 'Me', 'Me'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIdx]['questionText'],
            ),
            ...(questions[_questionIdx]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
