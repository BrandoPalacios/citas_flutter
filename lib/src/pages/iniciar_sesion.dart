import 'package:citas/src/pages/genero_login.dart';
import 'package:flutter/material.dart';

class IniciarSesion extends StatefulWidget {
  @override
  _IniciarSesionState createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  final scaffolkey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  //String _email;
  //String _password;
  bool _booleano = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffolkey,
      resizeToAvoidBottomPadding: false,
      appBar: appbarTitulo(),
      //
      //
      //
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Form(
          key: formKey,
          child: _validatorForm(),
        ),
      ),
      //floatingActionButton: FloatingButton(),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Widget appbarTitulo() {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        'Ingresar',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  Widget _validatorForm() {
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Container(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'Dirección de correo electrónico',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.blue[900],
                fontSize: 16,
              ),
            ),
          ),
          _emailLogin(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Container(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              'Contraseña',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.blue[900],
                fontSize: 16,
              ),
            ),
          ),
          _passwordLogin(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          _forgetpassword(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.32),
          _botones(context),
          //Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _emailLogin() {
    return TextFormField(
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        //labelText: 'Dirección de correo electrónico',
        //suffixIcon: Icon(Icons.email),
        /*border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),*/
        icon: Icon(Icons.email),
        suffixIcon: Icon(
          Icons.check,
          color: Colors.blue[900],
        ),
        //prefixIcon: Icon(Icons.email),
      ),

      validator: (value) {
        if (value.isEmpty) {
          setState(() {});
          return 'Correo vacío';
        }
        if (!value.contains('@')) {
          return 'Email invalido';
        }
        if (!value.contains('.com')) {
          return 'Email invalido';
        }

        return null;
      },
      //onSaved: (value) => _email = value,
    );
  }

  Widget _passwordLogin() {
    return TextFormField(
      obscureText: _booleano,
      decoration: InputDecoration(
        /*border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),*/
        icon: (_booleano) ? Icon(Icons.lock_outline) : Icon(Icons.lock_open),
        //errorText: 'Contraseña incorrecta',
        //labelText: 'Contraseña',
        suffixIcon: IconButton(
          icon:
              (_booleano) ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _booleano = !_booleano;
            });
          },
        ),
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Contraseña vacía';
        }
        if (value.length < 7) {
          return 'La contraseña es muy corta';
        }
        return null;
      },
      //onSaved: (value) => _password = value,
    );
  }

  Widget _forgetpassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          //decoration: BoxDecoration(color: Colors.white),
          child: TextButton(
            child: Text(
              '¿Olvidaste tu contraseña?',
              textAlign: TextAlign.right,
              style: TextStyle(color: Color(0xFFFB425B)),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _botones(BuildContext context) {
    return Column(
      children: [
        _botonIniciar(context),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        _botonRegistrate(context),
      ],
    );
  }

  Widget _botonIniciar(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.9,
      child: RaisedButton(
        elevation: 0,
        onPressed: () {
          setState(() {
            final form = formKey.currentState;
            if (form.validate()) {
              form.save();
            }
          });
        },
        color: Color(0xFFFF5252),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Text('Iniciar sesión',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Source',
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _botonRegistrate(BuildContext context) {
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
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: Text('Registrate',
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: 'Source',
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
