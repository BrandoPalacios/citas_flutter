import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:citas/src/widgets/floating_button.dart';
import 'package:citas/src/widgets/title_login.dart';
import 'package:citas/src/widgets/subtitle_login.dart';
import 'package:citas/src/pages/localization_login.dart';

class EdadLogin extends StatefulWidget {
  @override
  _EdadLoginState createState() => _EdadLoginState();
}

class _EdadLoginState extends State<EdadLogin> {
  String _fuente = 'Source';
  String _edad = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(
          top: 100.0,
          left: 30.0,
          right: 30.0,
          bottom: 10.0,
        ),
        child: Column(
          children: <Widget>[
            TitleLogin(text: '¿Cuántos años tienes?'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SubtitleLogin(
                text:
                    'Para poder mostrarte a las personas adecuadas, necesitamos saber tu edad'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            _nacimiento(),
            //_inputEdad(),
            Expanded(child: Container()),
            _botonEdad(),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Widget _nacimiento() {
    return Center(
      child: Container(
        height: MediaQuery.of(context).copyWith().size.height / 3,
        child: CupertinoDatePicker(
          mode: CupertinoDatePickerMode.date,
          initialDateTime: DateTime.now(),
          onDateTimeChanged: (DateTime newdate) {
            DateTime currentDate = DateTime.now();
            int age = currentDate.year - newdate.year;
            int month1 = currentDate.month;
            int month2 = newdate.month;
            if (month2 > month1) {
              age--;
            } else if (month1 == month2) {
              int day1 = currentDate.day;
              int day2 = newdate.day;
              if (day2 > day1) {
                age--;
              }
            }
            _edad = age.toString();

            setState(() {});
          },
          maximumDate: DateTime.now(),
          minuteInterval: 1,
        ),
      ),
    );
  }

  Widget _botonEdad() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => LocalizationLogin()));
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text("Tengo $_edad años",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: _fuente,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
