import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget {
  final perguntas = [
    "Qual é a sua cor favorita?",
    "resposta 1",
    "resposta 2",
    "resposta 3"
  ];

  void responder() {
    print('Resposta da pergunta: ');
  }

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
              Text(perguntas[0]),
              ElevatedButton(onPressed: responder, child: Text(perguntas[1])),
              ElevatedButton(onPressed: responder, child: Text(perguntas[2])),
              ElevatedButton(
                  onPressed: () => {print('Resposta 3')},
                  child: Text(perguntas[3])),
            ],
          )),
    );
  }
}
