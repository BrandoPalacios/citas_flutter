import 'package:flutter/material.dart';

import 'package:citas/src/widgets/title_login.dart';
import 'package:citas/src/widgets/subtitle_login.dart';
import 'package:citas/src/widgets/floating_button.dart';
import 'package:citas/src/pages/interes_login.dart';

class NotificationLogin extends StatefulWidget {
  @override
  _NotificationLoginState createState() => _NotificationLoginState();
}

class _NotificationLoginState extends State<NotificationLogin> {
  String _fuente = 'Source';
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
            TitleLogin(text: '¿Quieres activar las notificaciones?'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SubtitleLogin(
                text:
                    'Aprovecha al máximo Citas manteniéndote al día con tus nuevas coincidencia, mensajes y más.'),
            Expanded(
              child: Container(),
            ),
            _botonesNotification(),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Widget _botonesNotification() {
    return Column(
      children: [
        _boton1(context),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        _boton2(context),
      ],
    );
  }

  Widget _boton1(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => InteresLogin()));
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text('Sí, por supuesto',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: _fuente,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _boton2(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => InteresLogin()));
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text('Más tarde',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: _fuente,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
