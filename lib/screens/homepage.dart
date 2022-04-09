import 'package:expense_planner/model/transactioModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<Transaction> transactions = [
    Transaction(
      id: 'id1',
      title: "Shirt",
      amount: 255.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'id2',
      title: "Shoes",
      amount: 125.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'id1',
      title: "Bag",
      amount: 155.99,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Text(tx.title),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
