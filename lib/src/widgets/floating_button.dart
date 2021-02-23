import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      elevation: 0.0,
      mini: true,
      child: Icon(
        Icons.arrow_back_ios_outlined,
        color: Color(0xFFFF5252),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
