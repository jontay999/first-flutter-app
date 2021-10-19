import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() restart;

  Result(this.resultScore, this.restart);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 12) {
      resultText = 'You kinda suck';
    } else if (resultScore <= 20) {
      resultText = 'You suck a lil';
    } else {
      resultText = 'okay la. a bit cool la.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'Score: ' + resultScore.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: restart, child: Text('Restart Quiz!'))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
