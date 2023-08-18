import 'package:flutter/material.dart';

class Task {
  final String id;
  final DateTime date;
  final String name;
  final String? description;
  final Color? color;

  Task({
    required this.id,
    required this.name,
    required this.date,
    this.description,
    this.color,
  });
}
