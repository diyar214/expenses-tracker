import 'package:expense_tracker/core/app_theme.dart';
import 'package:flutter/material.dart';

import 'expenses/expenses.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      darkTheme: AppTheme.darkAppTheme(),
      theme: AppTheme.lightAppTheme(),
      themeMode: ThemeMode.dark,
      home: Expenses(),
    );
  }
}
