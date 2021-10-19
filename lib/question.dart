import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question ({ Key? key }) : super(key: key);

  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // take as much width as can
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
//TextAlign is enum


//stateless widget only rerender when external data change
//thats why good to declare vars as final to mean that when it is rendered, it does not change unless rerendered
//stateful rerenders when internal or external data change