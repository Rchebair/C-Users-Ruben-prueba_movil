import 'package:flutter/material.dart';



class Tarifa extends StatefulWidget {
  @override
  _Tarifa createState() => new _Tarifa();
}
Widget createText(){
  return Container(

  );
}

Widget bodyData() => DataTable(
  columns: <DataColumn>[
    DataColumn(
      label: Text("Fecha"),
      numeric: false,
      onSort: (i, b){},
      tooltip: ("Primera Tabla"),
    ),
    DataColumn(label: Text("Monto"),
      numeric: true,
      onSort: (i, b){},
      tooltip: ("Segunda Tabla"),

    ),
    DataColumn(label: Text("Estado"),
      numeric: false,
      onSort: (i, b){},
      tooltip: ("Tercera Tabla"),
    ),
  ],
  rows: <DataRow>[
    DataRow(cells: <DataCell>[
      DataCell(Text("26/10")),
      DataCell(Text("500 Pesos")),
      DataCell(Text("Activo")),
    ]),
    DataRow(cells: <DataCell>[
      DataCell(Text("26/11")),
      DataCell(Text("400 Pesos")),
      DataCell(Text("Activo")),
    ]),
    DataRow(cells: <DataCell>[
      DataCell(Text("26/12")),
      DataCell(Text("700 Pesos")),
      DataCell(Text("No, esta activo")),
    ]),
  ],
);

class _Tarifa extends State<Tarifa> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tarifa"),    
      ),
      body: Column(
            children: <Widget>[
              Text("Valor X Minuto:  1000"),
              bodyData()
            ],
              
      ),
    );
  }
}