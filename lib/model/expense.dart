import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

import '../enum_and_map.dart';

const uuid = Uuid();

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final AppCategory category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get formattedDate {
    return DateFormat.yMd().format(date);
  }
}
