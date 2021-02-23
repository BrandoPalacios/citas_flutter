//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:citas/src/pages/genero_login.dart';
import 'package:citas/src/pages/iniciar_sesion.dart';
import 'package:citas/src/widgets/background_paint.dart';
import 'package:citas/src/widgets/title_app.dart';
import 'package:citas/src/providers/google_sign_in.dart';

import 'package:citas/src/pages/terminos_condiciones.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroundPaint(),
          _loginPage(context),
        ],
      ),
    );
  }

  Widget _loginPage(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          TitleApp(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          _subtitulo(),
          //SizedBox(height: 10.0),
          Expanded(
            child: Container(),
          ),

          _botonesLogin(context),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          _terminosCondiciones(context),
          Expanded(
            child: Container(),
          ),
          _pregunta(),
          _iniciarSesion(context),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        ],
      ),
    );
  }

  Widget _subtitulo() {
    return Text(
      'Encuentra a tu alguien especial',
      style: TextStyle(
          color: Colors.white,
          fontFamily: 'Source',
          fontWeight: FontWeight.w100,
          fontSize: 16.0),
    );
  }

  Widget _botonesLogin(BuildContext context) {
    return Column(
      children: [
        button1(context),
        //ButtomRed(text: 'Registrate'),
        SizedBox(height: 10.0),
        button2(context),
      ],
    );
  }

  Widget button1(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => GeneroLogin()));
        },
        //color: Color(0xfff15152),
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text(
          'Registrate',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Source',
          ),
        ),
      ),
    );
  }

  Widget button2(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: OutlineButton.icon(
        label: Text(
          'Iniciar sesión con google',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Source',
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        highlightedBorderColor: Colors.white,
        borderSide: BorderSide(color: Colors.white),
        highlightColor: Colors.black26,
        highlightElevation: 0.0,
        icon: FaIcon(FontAwesomeIcons.google, color: Colors.white),
        onPressed: () {
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.login();
        },
        color: Colors.white,
      ),
    );
  }

  Widget _terminosCondiciones(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: FlatButton(
        child: Text(
          'Al registrarte, aceptas nuestros terminos y politicas de privacidad',
          style: TextStyle(
            color: Colors.white30,
            fontFamily: 'Source',
            fontSize: 13,
          ),
          textAlign: TextAlign.center,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => TerminosCondiciones()));
        },
      ),
    );
  }

  Widget _pregunta() {
    return Text(
      '¿Ya tienes una cuenta?',
      style: TextStyle(
        color: Colors.white60,
        fontFamily: 'Source',
        fontWeight: FontWeight.w100,
        fontSize: 16.0,
      ),
    );
  }

  Widget _iniciarSesion(BuildContext context) {
    return FlatButton(
      child: Text(
        'Iniciar sesión',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Source',
          fontSize: 16.0,
        ),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => IniciarSesion()));
      },
    );
  }
}
