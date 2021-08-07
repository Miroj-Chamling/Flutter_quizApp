import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    //this method is a getter which is used in dart to replace the print statement with more ease.
    var resultText = 'Your score is $resultScore';
    return resultText;
    //if you want to use if statement
    /*
    String resultText;
    if (resultScore <= 8){
      resultText = 'you are awesome';
    }
    else if(reslutScore >8 && resultScore <= 20){
      resultText = 'you are a perfectionist';
    }
    else if(reslutScore >20 && resultScore <= 40){
      resultText = 'you are a master';
    }
    else{
      resultText = 'you are godly';
    }
    return resultText;
    */
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase, //this is passed from the resultPhrase getter.
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlineButton(
            borderSide: BorderSide(color: Colors.blue),
            onPressed: resetHandler,
            child: Text(
              'Click here to restart the app',
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
