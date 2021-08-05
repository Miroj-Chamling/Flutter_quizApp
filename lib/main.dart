import 'dart:async';

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
  //final is used for a value that is first inititalied and is changed during the run time;
  //const is a value that wont be changed through out the run time.
  final questions = const [
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
  //var dummy = ['miroj'];
  //dummy.add('Rai');
  //Print(dummy);
  var _indexNumber = 0;

  void _questionAnswer() {
    setState(() {
      _indexNumber = _indexNumber + 1;
    });
    print('you pressed the button $_indexNumber times');
    if (_indexNumber < questions.length) {
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
        body: _indexNumber < questions.length
            ? Column(
                children: [
                  Question(questions[_indexNumber]['questionText'] as String),
                  //... is a spread operator in dart and is used to prevent list looping.
                  ...(questions[_indexNumber]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_questionAnswer, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
