import 'package:flutter/material.dart';

import 'Task_Step.dart';

class Task {
  final String id;
  final DateTime date;
  final String name;
  final String? description;
  Color color;
  final List<TaskStep> steps;

  Task({
    required this.id,
    required this.name,
    required this.date,
    this.description,
    required this.color,
    required this.steps
  });
}
