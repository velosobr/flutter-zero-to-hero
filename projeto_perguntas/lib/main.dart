import 'package:flutter/material.dart';

main()=> runApp(PerguntasApp());

class PerguntasApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Text('teste'), 
      ),
    );
  }
  
}