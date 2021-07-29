import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
            centerTitle: true,
            elevation: 3,
          ),
          body: Column(
            children: [
              Text('data'),
              Text('data 2'),
              Text('data 3'),
            ],
          )),
    );
  }
}
