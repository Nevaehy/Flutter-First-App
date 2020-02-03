import "package:flutter/material.dart";

import "./quiz.dart";

void main() => runApp(MyClass());

class MyClass extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyClassState();
  }
}

class _MyClassState extends State<MyClass> {
  var officeMan = 0, gameMan = 0;
  var _questionIndex = 0;
  var _questions = [
    "Your mouse?",
    "Your keyboard?",
    "Your monitor?"
  ];

  var _answers = [
    { "hp", "razer", "microsoft" },
    { "hp", "razer", "microsoft"},
    { "LG", "samsung", "acer", "dell"}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("looks like first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answers: _answers,
                questionIndex: _questionIndex,
                clickHandler: _onAnswerClick,
              )
            : Center(
                child: Column(
                  children: <Widget>[
                    gameMan >= officeMan
                        ? Text("you are a gamer")
                        : Text("you are an officeman"),
                    FlatButton(
                      child: Text("Restart Quiz"),
                      onPressed: _restartQuiz,
                      textColor: Colors.lightBlueAccent,
                    )
                  ]
                ),
              ),
        ),
      );
  }

  void _onAnswerClick(String answer) {
    if (answer == "razer" || answer == "acer")
      gameMan++;
    else
      officeMan++;

    setState(() {
        _questionIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      gameMan = 0;
      officeMan = 0;
    });
  }
}