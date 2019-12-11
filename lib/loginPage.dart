import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MenuPrincipal.dart';


class LoginPage extends StatelessWidget {
  Widget renderNombreInput() {
    return Container(
      child: Form(
        key: key,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (Text){
                if(Text.length == 0){
                  return "Este Campo es requerido";
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
                    maxLength: 50,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Ingrese su Empresa',
                      labelText: 'Empresa',
                      counterText: '',
                      icon: Icon(Icons.account_balance,
                          size: 32.0, color: Colors.blue[800]),
                    ),
            )
          ],
        ),
      ),
    );
  }

  Widget renderEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Usuario o Correo electronico'),
      ),
    );
  }

  Widget renderPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Contraseña'),
        obscureText: true,
      ),
    );
  }

  Widget renderLoginButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: new RaisedButton(
          textColor: Colors.blue,
          child: Text('Entrar'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MenuPrincipal()));
          }),
    );
  }

  Widget renderDivider() {
    return Container(
        padding: EdgeInsets.only(top: 20),
        child: Row(children: [
          Expanded(
              child: Divider(
            height: 1,
          )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text('0'),
          ),
          Expanded(
              child: Divider(
            height: 1,
          )),
        ]));
  }

  Widget renderFacebookButton() {
    return Container(
        padding: const EdgeInsets.only(top: 20),
        child: RaisedButton(
          textColor: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.facebookSquare),
              Expanded(
                child: Text(
                  'Entrar con facebook',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          onPressed: () {},
        ));
  }

  Widget renderCreateAccountLink() {
    return Container(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          'Si no tienes cuenta, pues creala aqui',
          textAlign: TextAlign.right,
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }

  // tiempo 35:56
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(children: [
          Image.asset(
            'assets/images/logo.png',
            height: 200,
            width: 200,
          ),
          renderNombreInput(),
          renderEmailInput(),
          renderPasswordInput(),
          renderLoginButton(context),
          renderCreateAccountLink(),
          renderDivider(),
          renderFacebookButton()
        ]),
      ),
    );
  }
}
