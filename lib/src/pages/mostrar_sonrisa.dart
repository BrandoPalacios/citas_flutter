import 'package:flutter/material.dart';

import 'package:citas/src/widgets/title_login.dart';
import 'package:citas/src/widgets/subtitle_login.dart';

class MostrarSonrisa extends StatefulWidget {
  @override
  _MostrarSonrisaState createState() => _MostrarSonrisaState();
}

class _MostrarSonrisaState extends State<MostrarSonrisa> {
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
            TitleLogin(text: '¡Muéstranos tu sonrisa!'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SubtitleLogin(
                text:
                    'Tienes más posibilidades con una foto, y recibirás un 90% más de mensajes.'),
            Expanded(
              child: Container(),
            ),
            _subirFoto(),
          ],
        ),
      ),
    );
  }

  Widget _subirFoto() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => MostrarSonrisa()));
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text('Subir foto',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: _fuente,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
