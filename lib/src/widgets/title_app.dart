import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 50.0,
            ),
            Text(
              'CITAS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontFamily: 'Source',
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
