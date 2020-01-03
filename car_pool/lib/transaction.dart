import 'package:flutter/foundation.dart';

class Transaction{
  final String startingPoint;
  final String destPoint;
  final int amount;
  final String time;
  final String description;

  Transaction({
    @required this.startingPoint,
    @required this.destPoint,
    @required this.amount,
    @required this.time,
    @required this.description,
    });
}