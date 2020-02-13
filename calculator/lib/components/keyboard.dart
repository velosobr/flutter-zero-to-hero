import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  Keyboard(this.cb);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.big(
              text: 'AC',
              color: Button.DARK,
              callback: cb,
            ),
            Button(
              text: '%',
              color: Button.DARK,
              callback: cb,
            ),
            Button.operation(
              text: '/',
              callback: cb,
            ),
          ]),
          ButtonRow([
            Button(
              text: '7',
              callback: cb,
            ),
            Button(
              text: '8',
              callback: cb,
            ),
            Button(
              text: '9',
              callback: cb,
            ),
            Button.operation(
              text: 'x',
              callback: cb,
            ),
          ]),
          ButtonRow([
            Button(
              text: '4',
              callback: cb,
            ),
            Button(
              text: '5',
              callback: cb,
            ),
            Button(
              text: '6',
              callback: cb,
            ),
            Button.operation(
              text: '-',
              callback: cb,
            ),
          ]),
          ButtonRow([
            Button(
              text: '1',
              callback: cb,
            ),
            Button(
              text: '2',
              callback: cb,
            ),
            Button(
              text: '3',
              callback: cb,
            ),
            Button.operation(
              text: '+',
              callback: cb,
            ),
          ]),
          ButtonRow([
            Button.big(
              text: '0',
              callback: cb,
            ),
            Button(
              text: ',',
              callback: cb,
            ),
            Button.operation(
              text: '=',
              callback: cb,
            ),
          ])
        ],
      ),
    );
  }
}
