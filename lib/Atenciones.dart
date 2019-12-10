import 'package:flutter/material.dart';
class Atenciones extends StatefulWidget {
  @override
  _Atenciones createState() => new _Atenciones();
}



class _Atenciones extends State<Atenciones> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
            title: Text("Atenciones"),
            backgroundColor: Colors.red,
            
          ),
        );
      }
    }