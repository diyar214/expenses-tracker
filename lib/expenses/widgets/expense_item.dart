import 'package:expense_tracker/enum_and_map.dart';
import 'package:flutter/material.dart';

import '../../model/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem({
    super.key,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Card(
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expense.category]),
                  const SizedBox(width: 4),
                  Text(expense.formattedDate)
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
