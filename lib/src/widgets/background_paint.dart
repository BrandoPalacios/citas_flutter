import 'package:flutter/material.dart';

class BackgroundPaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //para establecer colores gradientes
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(
              0.2, 0.0), //la orientacion de los colores del gradiente
          end: FractionalOffset(
              1.0, 0.6), //Hasta donde quiero que llegue el color mas oscuro
          stops: [
            0.0,
            0.6,
          ], //La orientacion del gradiente , es un poco inclinado
          tileMode: TileMode.clamp, //
        ),
      ),
    );
  }
}
