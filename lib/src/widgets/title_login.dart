import 'package:flutter/material.dart';

class TitleLogin extends StatelessWidget {
  final String text;
  TitleLogin({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF37474F),
        fontSize: 38.0,
        fontWeight: FontWeight.w600,
        fontFamily: 'Source',
      ),
      textAlign: TextAlign.left,
    );
  }
}
