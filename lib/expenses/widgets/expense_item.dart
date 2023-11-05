import 'package:flutter/material.dart';

import '../../core/constant.dart';
import '../../core/enum_and_map.dart';
import '../../model/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem({
    super.key,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: TextStyle(fontSize: 18, color: primTextColor),
            ),
            const SizedBox(height: 4),
            Row(children: [
              Text(
                '\$${expense.amount.toStringAsFixed(2)}',
                style: TextStyle(
                    fontSize: 16,
                    color: secTextColor,
                    fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Row(
                children: [
                  Icon(
                    categoryIcons[expense.category],
                    size: 24,
                    color: primTextColor,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    expense.formattedDate,
                    style: TextStyle(fontSize: 16, color: primTextColor),
                  )
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
