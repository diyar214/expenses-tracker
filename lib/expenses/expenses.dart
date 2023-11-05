import 'package:flutter/material.dart';

import '../core/enum_and_map.dart';
import '../model/expense.dart';
import 'widgets/expense_list.dart';
import 'widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Grocers',
      amount: 20.99,
      category: AppCategory.food,
      date: DateTime.now(),
    ),
    Expense(
      title: 'Game',
      amount: 34.99,
      category: AppCategory.leisure,
      date: DateTime.now(),
    ),
  ];

  void _openModal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        centerTitle: false,
        actions: [IconButton(onPressed: _openModal, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
