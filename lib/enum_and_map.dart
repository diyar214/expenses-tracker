import 'package:expense_tracker/main.dart';
import 'package:flutter/material.dart';

enum AppCategory { food, travel, leisure, work }

const categoryIcons = {
  AppCategory.food: Icons.lunch_dining,
  AppCategory.travel: Icons.flight_takeoff,
  AppCategory.leisure: Icons.movie,
  AppCategory.work: Icons.work
};
