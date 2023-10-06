import 'package:flutter/material.dart';
import 'package:poc/activities/activities_database.dart';
import 'package:poc/models/Task.dart';

import '../theme/theme.dart';

class TasksDatabase {
  static Task EscovarDentes = Task(
    id: "1",
    name: "Escovar os dentes",
    date: DateTime.now(),
    color: ThemeColors.optionColor1,
    steps: ActivitiesDatabase.BrushTeeth,
  );

  static Task Estudar = Task(
    id: "2",
    name: "Estudar",
    date: DateTime.now(),
    color: ThemeColors.optionColor4,
    steps: ActivitiesDatabase.Study,
    description: "Prova de ESOFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  );

  static Task LavarRoupa = Task(
      id: "3",
      name: "Lavar roupa",
      date: DateTime.now(),
      steps: ActivitiesDatabase.DoLaundry,
      color: ThemeColors.optionColor2);

  static Task IrParaAula = Task(
    id: "4",
    name: "Ir para aula",
    date: DateTime.now(),
    steps: ActivitiesDatabase.GoToClass,
    color: ThemeColors.optionColor5,
  );
}
