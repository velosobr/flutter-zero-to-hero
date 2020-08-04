import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((transaction) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin:
                EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  'R\$ ${transaction.value.toString()}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transaction.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    DateFormat('dd-MMMM-yy').format(transaction.date),
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
