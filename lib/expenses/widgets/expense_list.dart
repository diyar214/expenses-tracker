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
        background: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error.withOpacity(0.65),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
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
