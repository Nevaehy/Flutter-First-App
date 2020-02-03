import "package:flutter/material.dart";

import "widgets/text/TitleText.dart";
import "widgets/buttons/CommonButton.dart";

class Quiz extends StatelessWidget {
  final List<String> questions;
  final List<Set<String>> answers;
  final int questionIndex;
  final Function clickHandler;

  Quiz({
    @required this.questions,
    @required this.answers,
    @required this.questionIndex,
    @required this.clickHandler
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
            children: <Widget> [
              TitleText(questions.elementAt(questionIndex), 26),
              ...answers[questionIndex].map((answer) {
                return CommonButton(answer, () => clickHandler(answer));
              }).toList()
            ]
        )
    );
  }
}