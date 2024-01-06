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
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(
        onAddExpense: _addExpenses,
      ),
    );
  }

  void _addExpenses(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: Text('Expense deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expense Tracker',
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: _openModal,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: _registeredExpenses.length == 0
                ? Center(
                    child: Text('No Expenses'),
                  )
                : ExpenseList(
                    expenses: _registeredExpenses,
                    onRemoveExpense: _removeExpense,
                  ),
          ),
        ],
      ),
    );
  }
}
