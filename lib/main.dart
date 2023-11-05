import 'package:flutter/material.dart';

import 'expenses/expenses.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(useMaterial3: true),
      home: Expenses(),
    );
  }
}
