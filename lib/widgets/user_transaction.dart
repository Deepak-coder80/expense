import 'package:flutter/material.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../model/transactioModel.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'id1',
      title: "Shirt",
      amount: 3000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'id2',
      title: "Shoes",
      amount: 1250,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'id1',
      title: "Bag",
      amount: 1550,
      date: DateTime.now(),
    ),
  ];
  void _addTransactions(String txTitle, double amount) {
    final newTnx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: amount,
      date: DateTime.now(),
    );
    setState(
      () {
        _userTransactions.add(newTnx);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addTx: _addTransactions),
        TransactionList(transactions: _userTransactions),
      ],
    );
  }
}
