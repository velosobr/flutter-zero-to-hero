import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  Button({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: RaisedButton(
        child: Text(text),
        onPressed: () {},
      ),
    );
  }
}
