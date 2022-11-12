import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    // _totalScore = _totalScore + score;
    _totalScore += score;

    var _questions;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  final _questions = const [
    // Map
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Snake', 'score': 6},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 2}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max 1', 'score': 1},
        {'text': 'Max 2', 'score': 2},
        {'text': 'Max 3', 'score': 3},
        {'text': 'Max 4', 'score': 4}
      ],
    },
  ];

  // var dummy = const ['Hello'];
  // dummy.add('Max');
  // print(dummy);
  // dummy = [];
  // questions = [] // dose not work if questions is a const
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}
