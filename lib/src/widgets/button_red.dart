import 'package:flutter/material.dart';

class ButtonRed extends StatelessWidget {
  final String text;
  ButtonRed({@required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {},
        color: Colors.red,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text(text, style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}
