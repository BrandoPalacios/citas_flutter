import 'package:citas/src/pages/search_people.dart';
import 'package:citas/src/providers/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

//ESTA VISTA MUESTRA UN CONTAINER RESUMIENDO LOS DATOS DE LAS PERSONAS

class LoggedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BIENVENIDO',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'Source'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          CircleAvatar(
            maxRadius: 25,
            backgroundImage: NetworkImage(user.photoURL),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            'Nombre: ' + user.displayName,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontFamily: 'Source'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Text(
            'Correo: ' + user.email,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontFamily: 'Source'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.6,
                child: RaisedButton(
                  elevation: 0,
                  color: Color(0xFFFF5252),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Text('Continuar',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Source',
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => SearchPeople()));
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.6,
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Text('Cerrar sesión',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Source',
                          fontWeight: FontWeight.bold)),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.logout();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
