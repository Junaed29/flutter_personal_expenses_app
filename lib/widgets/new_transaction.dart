import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NewTransaction extends StatelessWidget {
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();
  Function(String title, double amount) addNewTransaction;

  NewTransaction({required this.addNewTransaction});

  void submitTransaction() {
    if (titleInputController.text.isEmpty ||
        double.parse(amountInputController.text) <= 0) {
      Fluttertoast.showToast(msg: 'Invalid input');
      return;
    }

    addNewTransaction(
        titleInputController.text, double.parse(amountInputController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleInputController,
              decoration: InputDecoration(labelText: "Title"),
              onSubmitted: (_) => submitTransaction(),
            ),
            TextField(
              controller: amountInputController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(labelText: "Amount"),
              onSubmitted: (_) => submitTransaction(),
            ),
            TextButton(
                onPressed: submitTransaction,
                child: Text(
                  "Add Transection",
                  style: TextStyle(color: Colors.purple),
                ))
          ],
        ),
      ),
    );
  }
}
