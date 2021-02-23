import 'package:flutter/material.dart';

import 'package:citas/src/pages/edad_login.dart';
import 'package:citas/src/widgets/floating_button.dart';
import 'package:citas/src/widgets/title_login.dart';
import 'package:citas/src/widgets/subtitle_login.dart';

class GeneroLogin extends StatefulWidget {
  @override
  _GeneroLoginState createState() => _GeneroLoginState();
}

class _GeneroLoginState extends State<GeneroLogin> {
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
            TitleLogin(text: '¿Con qué género te identificas?'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SubtitleLogin(
                text:
                    'Para poder mostrarte a las personas adecuadas, necesitamos saber tu género'),
            Expanded(
              child: Container(),
            ),
            _botonesSexo(context),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Widget _botonesSexo(BuildContext context) {
    return Column(
      children: [
        _botonMujer(context),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        _botonHombre(context),
      ],
    );
  }

  Widget _botonMujer(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => EdadLogin()));
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text('Mujer',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: _fuente,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _botonHombre(BuildContext contexfluttert) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => EdadLogin()));
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text('Hombre',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: _fuente,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
