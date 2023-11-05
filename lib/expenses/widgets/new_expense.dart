import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            controller: _titleController,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: _amountController,
            decoration: const InputDecoration(
              label: Text('Amount'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                },
                child: const Text('Save Expenses'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Close'),
              )
            ],
          )
        ],
      ),
    );
  }
}
