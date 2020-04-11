import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;

  TransactionList(this.userTransactions);

  @override
  Widget build(BuildContext context) {
    return Column(
              children: userTransactions.map((tx) {
            return Card(
                child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  padding: EdgeInsets.all(10),
                  child: Text('\$${tx.amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      DateFormat('yyyy-MM-dd').format(tx.date),
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),);
          }).toList()
        );
  }
}