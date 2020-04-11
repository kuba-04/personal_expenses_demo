import 'package:flutter/foundation.dart';

class Transaction {
  String id;
  String title;
  double amount;
  DateTime date;

  Transaction({
    // @reqiuired will throw an error if the argument is not passed in the constructor
    @required this.id, 
    @required this.title, 
    @required this.amount, 
    @required this.date
  });
}