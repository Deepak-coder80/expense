import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  const NewTransaction({Key? key, required this.addTx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    void submitData() {
      String enteredTitle = titleController.text;
      double enteredAmount = double.parse(amountController.text);
      if (enteredTitle.isEmpty || enteredAmount <= 0) {
        return;
      }
      addTx(enteredTitle, enteredAmount);
    }

    return Card(
      elevation: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            controller: titleController,
            onSubmitted: (_) => submitData,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: amountController,
            onSubmitted: (_) => submitData,
            decoration: const InputDecoration(
              label: Text('Amout'),
            ),
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () => submitData,
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
