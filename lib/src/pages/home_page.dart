import 'package:citas/src/pages/logged_page.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:citas/src/providers/google_sign_in.dart';
import 'package:citas/src/pages/login_page.dart';
import 'package:citas/src/widgets/background_paint.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);

            if (provider.isSigningIn) {
              //si provider acepta hay una imagen q carga
              return buildLoading();
            } else if (snapshot.hasData) {
              //si obtiene datos se dirige a loggedpage
              return LoggedPage();
            } else {
              return LoginPage();
            }
          },
        ),
      ),
    );
  }

  Widget buildLoading() => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundPaint(),
          Center(child: CircularProgressIndicator()),
        ],
      );
}
