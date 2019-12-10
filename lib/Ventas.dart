import 'package:flutter/material.dart';


class Ventas extends StatefulWidget {
  @override
  _Ventas createState() => new _Ventas();
}


class _Ventas extends State<Ventas> {
Widget bodyData() => DataTable(
  columns: <DataColumn>[
    DataColumn(
      label: Text("Fecha"),
      numeric: false,
      onSort: (i, b){},
      tooltip: ("Tiempo"),
    ),
    DataColumn(label: Text("Monto"),
      numeric: true,
      onSort: (i, b){},
      tooltip: ("Segunda Tabla"),

    ),
    DataColumn(label: Text("+"),
      numeric: false,
      onSort: (i, b){},
      tooltip: ("Tercera Tabla"),
    ),
  ],
  rows: <DataRow>[
    DataRow(cells: <DataCell>[
      DataCell(Text("26/10")),
      DataCell(Text("01:15")),
      DataCell(Text("42:100")),
    ]),
    DataRow(cells: <DataCell>[
      DataCell(Text("26/11")),
      DataCell(Text("04:23")),
      DataCell(Text("30.500")),
    ])
  ],
);

@override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ventas"),
            backgroundColor: Colors.red,
          ),
      body: Container(
        child: bodyData(),
      ),
    );
  }
}