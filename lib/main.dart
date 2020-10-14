import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:VaccineSurvey/result.dart';
import './quiz.dart';
import './result.dart';
import './survey_name.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //runApp(MyApp());
  runApp(MaterialApp(
    title: 'Vaccine Survey',
    home: MyApp(),
  ));
}

/*class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Select your Gender',
      'answers': [
        {'text': 'Male', 'score': 'male'},
        {'text': 'Female', 'score': 'female'}
      ]
    },
    {
      'questionText': 'How did the performance make you feel?',
      'answers': [
        {'text': '    😡\nTerrible', 'score': 'terrible'},
        {'text': ' ☹️\nBad', 'score': 'bad'},
        {'text': ' 😐\n Ok', 'score': 'ok'},
        {'text': '   🙂\n Good', 'score': 'good'},
        {'text': '   😀\nGreat', 'score': 'great'},
      ]
    },
    {
      'questionText': 'How did you feel about the length of the play?',
      'answers': [
        {'text': '    😡\nTerrible', 'score': 'terrible'},
        {'text': ' ☹️\nBad', 'score': 'bad'},
        {'text': ' 😐\n Ok', 'score': 'ok'},
        {'text': '   🙂\n Good', 'score': 'good'},
        {'text': '   😀\nGreat', 'score': 'great'},
      ]
    },
    {
      'questionText':
          'How likely are you to recommend the show to another person?',
      'answers': [
        {'text': '1', 'score': '1'},
        {'text': '2', 'score': '2'},
        {'text': '3', 'score': '3'},
        {'text': '4', 'score': '4'},
        {'text': '5', 'score': '5'},
      ]
    },
    {
      'questionText': 'Will you be willing to pay N100 for the show?',
      'answers': [
        {'text': ' ☹️\n No', 'score': 'no'},
        {'text': '   😐\nMaybe', 'score': 'maybe'},
        {'text': ' 🙂\nYes', 'score': 'yes'},
      ]
    },
    {
      'questionText': 'Will you prefer the play to be done at night?',
      'answers': [
        {'text': ' ☹️\n No', 'score': 'no'},
        {'text': '   😐\nMaybe', 'score': 'maybe'},
        {'text': ' 🙂\nYes', 'score': 'yes'},
      ]
    },
    {
      'questionText': 'Have you seen a theater performance before?',
      'answers': [
        {'text': ' ☹️\n No', 'score': 'no'},
        {'text': ' 🙂\nYes', 'score': 'yes'},
      ]
    },
    {
      'questionText': 'Do you feel more accepting of vaccines now?',
      'answers': [
        {'text': '    😡\nTerrible', 'score': 'terrible'},
        {'text': ' ☹️\nBad', 'score': 'bad'},
        {'text': ' 😐\n Ok', 'score': 'ok'},
        {'text': '   🙂\n Good', 'score': 'good'},
        {'text': '   😀\nGreat', 'score': 'great'},
      ]
    },
  ];

  var _questionIndex = 0;
  String _totalScore = '0';

  void _resetSurvey() {
    setState(() {
      _questionIndex = 0;
      _totalScore = '0';
    });
  }

  void _answeredQuestion(String score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex <= _questions.length) {
      _totalScore = score;
    } else {
      print('finished');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Vaccine Survey',
          ),
        ),
        body: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: RaisedButton(
              onPressed: () {
                //right way: use context in below level tree with MaterialApp
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => surveyName()));
              },
              child: const Text('Begin Survey')),
        )),
      ),
    );
  }
}*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vaccine Survey'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Begin Survey'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("1 of 7"),
        ),
        body: Column(
          children: [
            Text('Enter Name Here'),
          ],
        ));
  }
}
