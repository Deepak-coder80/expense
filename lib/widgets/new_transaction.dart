import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  const NewTransaction({Key? key, required this.addTx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    return Card(
      elevation: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: amountController,
            decoration: const InputDecoration(
              label: Text('Amout'),
            ),
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              addTx(titleController.text, double.parse(amountController.text));
            },
            child: const Text(
              'Add Transaction',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
