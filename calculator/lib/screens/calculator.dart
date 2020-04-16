import 'package:flutter/material.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

class Calculador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display('123.450'),
          Keyboard(),
        ],
      ),
    );
  }
}
