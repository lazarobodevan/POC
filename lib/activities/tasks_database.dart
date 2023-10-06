import 'package:flutter/material.dart';
import 'package:poc/activities/activities_database.dart';
import 'package:poc/models/Task.dart';

import '../theme/theme.dart';

class TasksDatabase {
  static Task EscovarDentes = Task(
      id: "1",
      name: "Escovar os dentes",
      date: DateTime.now(),
      color: ThemeColors.optionColorLilac,
      steps: ActivitiesDatabase.BrushTeeth);
}
