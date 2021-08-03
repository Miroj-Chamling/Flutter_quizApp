import 'dart:html';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _indexNumber = 0;

  void _questionAnswer() {
    setState(() {
      _indexNumber = _indexNumber + 1;
    });
    print('you pressed the button $_indexNumber times');
  }

  @override
  var questions = [
    /*here {} is used to make a map we can even use map() function to create 
    a map but {} is a short way to create a map*/
    /*
    Dart Map is an object that stores data in the form of a key-value pair.
    here, 'questionText' is the key value. 
    */
    {
      'questionText': 'what is your favourite fruit?',
      'answer': ['apple', 'banana', 'grape', 'mango'],
    },
    {
      'questionText': 'what is your favourite sport?',
      'answer': ['football', 'chess', 'basketball', 'cricket'],
    },
    {
      'questionText': 'what is your favourite song?',
      'answer': ['kutu ma kutu', 'night changes', 'yatri', 'simsime pani'],
    },
    {
      'questionText': 'what is your favourite color?',
      'answer': ['red', 'blue', 'green', 'pink'],
    },
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              children: [
                Question(questions[_indexNumber]['questionText'] as String),
                Answer(_questionAnswer),
                Answer(_questionAnswer),
                Answer(_questionAnswer),
                Answer(_questionAnswer),
              ],
            )));
  }
}
