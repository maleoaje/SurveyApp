import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: FlatButton(
        textColor: Colors.black,
        child: Text(answerText,
            style: TextStyle(
              fontSize: 25,
            )),
        onPressed: selectHandler,
      ),
    );
  }
}
