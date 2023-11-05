import 'package:expense_tracker/enum_and_map.dart';
import 'package:expense_tracker/expenses/widgets/expense_list.dart';
import 'package:flutter/material.dart';

import '../model/expense.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
