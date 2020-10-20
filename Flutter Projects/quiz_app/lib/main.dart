import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(quizApp());
}

class quizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: quizPage(),
          ),
        ),
      ),
    );
  }
}

class quizPage extends StatefulWidget {
  @override
  _quizPageState createState() => _quizPageState();
}

class _quizPageState extends State<quizPage> {
  List<Widget> score = [];
  void checkAnswer(bool userPickedAnswer)
  {
    setState(() {
      bool correctAnswer = quizBrain.getAns();
      if(correctAnswer == userPickedAnswer)
      {
        score.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      }
      else
      {
        score.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      bool last = quizBrain.isFinished();
      quizBrain.nextQuestion();
      if(last)
        {
          Alert(
            context: context,
            type: AlertType.error,
            title: "End!",
            desc: "You have attempted all the questions of the quiz.",
            buttons: [
              DialogButton(
                child: Text(
                  "Ok",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                width: 120,
              )
            ],
          ).show();
          score.clear();
          quizBrain.reset();
        }
    });
  }
/*  List<String> questions = [
    'ASCII value of A is 65.',
    "Runtime Error is not an error.",
    '%d is used for integers.',
  ];
  List<bool> answers = [
    true,
    false,
    true,
  ];
  Question q1 = Question(a:'ASCII value of A is 65.', b: true);*/

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestion(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: FlatButton(
                onPressed: () {
                  checkAnswer(true);
                },
                textColor: Colors.white,
                color: Colors.green,
                child: const Text('True', style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: FlatButton(
                onPressed: () {
                  checkAnswer(false);
                },
                color: Colors.red,
                child: const Text('False', style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
          Row(
            children: score,
          )
        ],
      ),
    );
  }
}
