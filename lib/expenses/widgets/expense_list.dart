import 'package:flutter/material.dart';

import '../../model/expense.dart';
import 'expense_item.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;
  final Function(Expense expense) onRemoveExpense;

  const ExpenseList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        onDismissed: (_) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(
          expense: expenses[index],
        ),
      ),
    );
  }
}
