import "package:flutter/material.dart";

class TitleText extends StatelessWidget {
  final String _title;
  final double _size;

  TitleText(this._title, this._size);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
          _title,
        style: TextStyle(
            fontSize: _size,
            color: Colors.black,
            decoration: TextDecoration.none),
        textAlign: TextAlign.center,
      )
    );
  }
}