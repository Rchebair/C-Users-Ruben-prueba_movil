import 'package:flutter/material.dart';
import 'package:prueba_movil/Atenciones.dart';
import 'package:prueba_movil/Tarifa.dart';
import 'package:prueba_movil/Ventas.dart';

class MenuPrincipal extends StatefulWidget {


  @override
  _MenuPrincipal createState() => new _MenuPrincipal();
}

class _MenuPrincipal extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView(
    // Importante: elimine cualquier padding del ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Aplicacion'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Tarifa'),
            onTap: () {Navigator.push(context,
                MaterialPageRoute(builder: (context) => Tarifa()));
              // Actualiza el estado de la aplicación
              // ...
            },
          ),
          ListTile(
            title: Text('Ventas'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ventas()));
            },
        ),
          ListTile(
            title: Text('Atenciones'),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Atenciones()));
              // Actualiza el estado de la aplicación
              // ...
            },
          ),
        ],
      ),
    ),
          appBar: AppBar(
            title: Text("menu principal"),
            backgroundColor: Colors.red,
            
          ),
          body: Stack(
            children: <Widget>[
              Positioned( 
                height: 100,
                right: 15, left: 15, top: 50,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ventas()));
                  },
                  child: Text("Ventas        CLP 140.752"),
                ),
              ),
              Positioned(
                height: 100,
                right: 15, left: 15, top: 200,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Atenciones()));
                  },
                  child: Text("Atenciones      CLP 98.392") ,),
              )
            ],
          ),
        );
      }
    }
