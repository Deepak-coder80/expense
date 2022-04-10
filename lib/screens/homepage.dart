import 'package:expense_planner/widgets/new_transaction.dart';
import 'package:expense_planner/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import '../widgets/transaction_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
          const UserTransactions(),
        ],
      ),
    );
  }
}
