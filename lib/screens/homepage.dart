// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../widgets/transaction_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: const Card(
              elevation: 10,
              color: Colors.blue,
              child: Text('CHART!'),
            ),
          ),
          Card(
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
                FlatButton(
                  onPressed: () {
                    print(titleController.text);
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
          ),
          const TransactionList(),
        ],
      ),
    );
  }
}
