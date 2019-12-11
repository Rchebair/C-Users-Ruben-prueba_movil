import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ventas y Tarifas',
      theme: ThemeData(
        dividerColor: Colors.orange,
        primarySwatch: Colors.green,
        buttonTheme: ButtonThemeData(height: 22),
        textTheme: TextTheme(
          subhead: TextStyle(
            fontSize: 18,
          ),
          button: TextStyle(
            fontSize: 15,
            color: Colors.orange,
          )
        )
      ),
      home: LoginPage(),
    );
  }
}