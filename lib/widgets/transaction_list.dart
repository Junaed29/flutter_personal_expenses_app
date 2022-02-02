import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses_app/models/transection.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions
          .map((item) => Card(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "\$${item.amount}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${DateFormat.yMMMd().format(item.date)}",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
