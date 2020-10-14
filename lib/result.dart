import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Result extends StatelessWidget {
  final db = FirebaseFirestore.instance;

  final String surveyScore;
  final Function resetHandler;

  Result(this.surveyScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'Thanks for your feedback!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            onPressed: resetHandler,
            child: Text(
              'Restart Survey',
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.redAccent,
            onPressed: () async {
              await db.collection('surveyData').add({
                'surveys': surveyScore,
              });
            },
            child: Text(
              'Save Data',
            ),
          )
        ],
      ),
    );
  }
}
