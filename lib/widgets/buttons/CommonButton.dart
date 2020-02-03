import "package:flutter/material.dart";

class CommonButton extends StatelessWidget {
  final String name;
  final Function clickHandler;

  CommonButton(this.name, this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        child: Text(name),
        onPressed: clickHandler,
        color: Colors.lightBlueAccent,
        textColor: Colors.white,
      ),
    );
  }
}