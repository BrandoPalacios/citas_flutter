import 'package:citas/src/pages/mostrar_sonrisa.dart';
import 'package:flutter/material.dart';

import 'package:citas/src/widgets/title_login.dart';
import 'package:citas/src/widgets/subtitle_login.dart';
import 'package:citas/src/widgets/floating_button.dart';

class InteresLogin extends StatefulWidget {
  @override
  _InteresLoginState createState() => _InteresLoginState();
}

class _InteresLoginState extends State<InteresLogin> {
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
            TitleLogin(text: '¿A quién estás buscando?'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SubtitleLogin(
                text:
                    'Para ver a las personas adecuadas, dinos quién te interesa.'),
            Expanded(
              child: Container(),
            ),
            _botonesInteres(),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Widget _botonesInteres() {
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
                  builder: (BuildContext context) => MostrarSonrisa()));
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text('Hombres',
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
                  builder: (BuildContext context) => MostrarSonrisa()));
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text('Mujeres',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: _fuente,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
