import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const LIGHT = Colors.grey;
  static const DEFAULT = Color.fromRGBO(48, 48, 48, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    @required this.text,
    this.big = false,
    this.color = DEFAULT,
    @required this.cb,
  });

  Button.big({
    @required this.text,
    this.big = true,
    this.color = DEFAULT,
    @required this.cb,
  });

  Button.light({
    @required this.text,
    this.big = false,
    this.color = LIGHT,
    @required this.cb,
  });

  Button.operation({
    @required this.text,
    this.big = false,
    this.color = OPERATION,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(50.0),
        ),
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w300,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
