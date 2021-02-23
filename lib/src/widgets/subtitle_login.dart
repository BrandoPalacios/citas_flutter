import 'package:flutter/material.dart';

class SubtitleLogin extends StatelessWidget {
  final String text;
  SubtitleLogin({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
        color: Color(0xFF546E7A),
        fontFamily: 'Source',
      ),
      textAlign: TextAlign.start,
    );
  }
}
