import 'package:flutter/material.dart';

class TerminosCondiciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: _appbartitulo(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: _terminosycondiciones(),
      ),
      //floatingActionButton: FloatingButton(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Widget _appbartitulo() {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        'Términos y condiciones',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  Widget _terminosycondiciones() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Estos Términos y Condiciones de Uso regulan las reglas a que se sujeta la utilización de la APP CITAS (en adelante, la APP), que puede descargarse desde el dominio citas.com La descarga o utilización de la APP atribuye la condición de Usuario a quien lo haga e implica la aceptación de todas las condiciones incluidas en este documento y en la Política de Privacidad y el Aviso Legal de dicha página Web. El Usuario debería leer estas condiciones cada vez que utilice la APP, ya que podrían ser modificadas en lo sucesivo.",
            textAlign: TextAlign.justify,
          ),
          Text(
            "Estos Términos y Condiciones de Uso regulan las reglas a que se sujeta la utilización de la APP CITAS (en adelante, la APP), que puede descargarse desde el dominio citas.com La descarga o utilización de la APP atribuye la condición de Usuario a quien lo haga e implica la aceptación de todas las condiciones incluidas en este documento y en la Política de Privacidad y el Aviso Legal de dicha página Web. El Usuario debería leer estas condiciones cada vez que utilice la APP, ya que podrían ser modificadas en lo sucesivo.",
            textAlign: TextAlign.justify,
          ),
          Text(
            "Estos Términos y Condiciones de Uso regulan las reglas a que se sujeta la utilización de la APP CITAS (en adelante, la APP), que puede descargarse desde el dominio citas.com La descarga o utilización de la APP atribuye la condición de Usuario a quien lo haga e implica la aceptación de todas las condiciones incluidas en este documento y en la Política de Privacidad y el Aviso Legal de dicha página Web. El Usuario debería leer estas condiciones cada vez que utilice la APP, ya que podrían ser modificadas en lo sucesivo.",
            textAlign: TextAlign.justify,
          ),
          Text(
            "Estos Términos y Condiciones de Uso regulan las reglas a que se sujeta la utilización de la APP CITAS (en adelante, la APP), que puede descargarse desde el dominio citas.com La descarga o utilización de la APP atribuye la condición de Usuario a quien lo haga e implica la aceptación de todas las condiciones incluidas en este documento y en la Política de Privacidad y el Aviso Legal de dicha página Web. El Usuario debería leer estas condiciones cada vez que utilice la APP, ya que podrían ser modificadas en lo sucesivo.",
            textAlign: TextAlign.justify,
          ),
          Text(
            "Estos Términos y Condiciones de Uso regulan las reglas a que se sujeta la utilización de la APP CITAS (en adelante, la APP), que puede descargarse desde el dominio citas.com La descarga o utilización de la APP atribuye la condición de Usuario a quien lo haga e implica la aceptación de todas las condiciones incluidas en este documento y en la Política de Privacidad y el Aviso Legal de dicha página Web. El Usuario debería leer estas condiciones cada vez que utilice la APP, ya que podrían ser modificadas en lo sucesivo.",
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
