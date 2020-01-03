import 'package:flutter/material.dart';
import './transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactions = [
    Transaction(
        startingPoint: "London",
        destPoint: "Toronto",
        amount: 30,
        time: "Nov-11-2019 15:00",
        description:
            "This is the description of the post... This is the description of the post... This is the description of the post... This is the description of the post... "),
    Transaction(
        startingPoint: "London",
        destPoint: "Toronto",
        amount: 30,
        time: "Nov-11-2019 15:00",
        description: "asdasd"),
    Transaction(
        startingPoint: "London",
        destPoint: "Toronto",
        amount: 30,
        time: "Nov-11-2019 15:00",
        description: "asdasd"),
    Transaction(
        startingPoint: "London",
        destPoint: "Toronto",
        amount: 30,
        time: "Nov-11-2019 15:00",
        description: "asdasd"),
    Transaction(
        startingPoint: "London",
        destPoint: "Toronto",
        amount: 30,
        time: "Nov-11-2019 15:00",
        description: "asdasd"),
    Transaction(
        startingPoint: "London",
        destPoint: "Toronto",
        amount: 30,
        time: "Nov-11-2019 15:00",
        description: "asdasd"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          elevation: 5, //rise up the card, make shadow
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 230,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(tx.description,
                        overflow: TextOverflow.ellipsis,
                        style:
                            new TextStyle(fontSize: 18.0, color: Colors.grey)),
                    height: 80,
                  ),
                  Container(
                      width: 230,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        tx.time,
                        style: new TextStyle(fontSize: 18.0),
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                      child: Text(
                    tx.destPoint,
                    style: new TextStyle(fontSize: 30.0),
                  )),
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Text(tx.startingPoint,style: new TextStyle(fontSize: 18.0,)),),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Text('\$' + tx.amount.toString(),style: new TextStyle(fontSize: 18.0,))),
                    ],
                  )
                ],
              )
              // Container(
              //   height: 80,
              //   margin:
              //       EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              //   child: Text(
              //     tx.startingPoint,
              //     style: new TextStyle(fontSize: 19.0),
              //   ),

              // ),
              // Container(
              //   height: 80,

              //   child: Text(
              //     '->',
              //     style: new TextStyle(fontSize: 19.0),
              //   ),
              // ),
              // Container(
              //   height: 80,
              //   margin:
              //       EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              //   child: Text(
              //     tx.destPoint,
              //     style: new TextStyle(fontSize: 19.0),
              //   ),
              // ),
              // Container(
              //   height: 80,
              //   margin:
              //       EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              //   child: Text(
              //     '\$'+tx.amount.toString(),
              //     style: new TextStyle(fontSize: 19.0),
              //     // textAlign: TextAlign.end,
              //   ),
              // )
            ],
          ),
        );
      }).toList(),
    );
  }
}
