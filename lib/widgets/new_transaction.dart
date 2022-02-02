import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();

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
            ),
            TextField(
              controller: amountInputController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(labelText: "Amount"),
            ),
            TextButton(
                onPressed: () {},
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
