import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maria_money/models/transaction.dart';

main() => runApp(MariaMoneyApp());

class MariaMoneyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('Showing Snackbar'));

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
        id: 't1',
        title: 'Novo tenis de corrida',
        value: 310.76,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Novo Sapato de festa',
        value: 540.99,
        date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas pessoais'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              scaffoldKey.currentState.showSnackBar(snackBar);
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Grafico'),
              elevation: 5,
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepPurple[700],
                          width: 2,
                        )
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tr.value.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,

                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                        Text(
                            tr.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Text(tr.date.toString(),
                          style: TextStyle(
                            color: Colors.grey[700]

                        ),)
                      ],
                    )
                  ],
                ),
              );
            }).toList()
          )
        ],
      ),
    );
  }
}
