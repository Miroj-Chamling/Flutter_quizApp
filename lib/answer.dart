import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('answet 1'),
        //onPressed: () => print('you clicked 1'),this is to give the in the terminal
        onPressed: selectHandler,
      ),
    );
  }
}
