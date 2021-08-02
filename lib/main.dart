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
    print(_indexNumber);
  }

  @override
  var questions = ['what is your name?', 'where do you live?'];
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(
              children: [
                Question(questions[_indexNumber]),
                Answer(_questionAnswer),
                Answer(_questionAnswer),
                Answer(_questionAnswer),
                Answer(_questionAnswer),
              ],
            )));
  }
}
