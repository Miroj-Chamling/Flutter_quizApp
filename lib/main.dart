import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_first/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //creates the statefull widgit named, inititaze and return MyAppState
    return _MyAppState();
  }
}
// _ is a syntax in dart to turn a public class to private. Now the _MyAppState
// accessable only from main.dart.

class _MyAppState extends State<MyApp> {
  //final is used for a value that is first inititalied and is changed during the run time;
  //const is a value that wont be changed through out the run time.
  var _indexNumber = 0;
  var _totalscore = 0;

  final _questions = const [
    /*here {} is used to make a map we can even use map() function to create 
    a map but {} is a short way to create a map*/
    /*
    Dart Map is an object that stores data in the form of a key-value pair.
    here, 'questionText' is the key value. 
    */
    {
      'questionText': 'what is your favourite fruit?',
      'answers': [
        {'text': 'apple', 'score': 10},
        {'text': 'banana', 'score': 5},
        {'text': 'grape', 'score': 7},
        {'text': 'mango', 'score': 8},
      ],
    },
    {
      'questionText': 'what is your favourite sport?',
      'answers': [
        {'text': 'football', 'score': 10},
        {'text': 'chess', 'score': 10},
        {'text': 'basketball', 'score': 10},
        {'text': 'cricket', 'score': 10},
      ],
    },
    {
      'questionText': 'what is your favourite song?',
      'answers': [
        {'text': 'kutu ma kutu', 'score': 10},
        {'text': 'night changes', 'score': 10},
        {'text': 'yatri', 'score': 15},
        {'text': 'simsime pani', 'score': 10},
      ],
    },
    {
      'questionText': 'what is your favourite color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 10},
        {'text': 'green', 'score': 10},
        {'text': 'pink', 'score': 10},
      ],
    },
  ];
  //var dummy = ['miroj'];
  //dummy.add('Rai');
  //Print(dummy);
  void _questionAnswer(int score) {
    _totalscore += score;
    setState(() {
      _indexNumber = _indexNumber + 1;
    });
    print('you pressed the button $_indexNumber times');
    if (_indexNumber < _questions.length) {
      print('We have more questions.');
    } else {
      print('No more questions.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _indexNumber < _questions.length
              ? quiz(
                  questionAnswer: _questionAnswer,
                  indexNumber: _indexNumber,
                  questions: _questions,
                )
              : result()),
    );
  }
}
