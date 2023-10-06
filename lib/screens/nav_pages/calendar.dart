import 'package:flutter/material.dart';
import 'package:poc/components/calendar_day_item.dart';
import 'package:poc/components/title.dart';
import 'package:poc/models/Task.dart';
import 'package:poc/theme/theme.dart';

import '../../components/LineSeparator.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});
  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  List<List<Task>> tasks = [
    [
      Task(
        id: '1',
        name: 'Escovar os dentes',
        description: '',
        date: DateTime.now().subtract(Duration(days: 1)),
        steps: [],
        color: ThemeColors.optionColor1,
      ),
      Task(
        id: '2',
        name: 'Estudar',
        description: '',
        date: DateTime.now().subtract(Duration(days: 1)),
        steps: [],
        color: ThemeColors.optionColor1,
      ),
    ],
    [
      Task(
        id: '3',
        name: 'Escovar os dentes',
        description: '',
        date: DateTime.now(),
        steps: [],
        color: ThemeColors.optionColor1,
      ),
    ],
    [
      Task(
        id: '4',
        name: 'Escovar os dentesaaa',
        description: '',
        date: DateTime.now().add(Duration(days: 1)),
        steps: [],
        color: ThemeColors.optionColor1,
      ),
    ],
    [
      Task(
        id: '4',
        name: 'Escovar os dentes',
        description: '',
        date: DateTime.now().add(Duration(days: 2)),
        steps: [],
        color: ThemeColors.optionColor1,
      ),
      Task(
        id: '4',
        name: 'Escovar os dentes',
        description: '',
        date: DateTime.now().add(Duration(days: 2)),
        steps: [],
        color: ThemeColors.optionColor1,
      ),
      Task(
        id: '4',
        name: 'Escovar os dentes',
        description: '',
        date: DateTime.now().add(Duration(days: 2)),
        steps: [],
        color: ThemeColors.optionColor1,
      ),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleH3(text: 'Calendário'),
                Row(
                  children: [
                    const Text('Visualização:'),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 100,
                      child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          value: 'weekly',
                          style: const TextStyle(color: ThemeColors.primary1),
                          items: const [
                            DropdownMenuItem(
                              value: 'weekly',
                              enabled: true,
                              child: Text(
                                'por semana',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 'monthly',
                              child: Text(
                                'por mês',
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                          onChanged: (selected) {
                            setState(() {
                              //TODO: adicionar atualização de comportamento
                            });
                          }),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: tasks.map((list) {
                  return Column(
                    children: [
                      CalendarDayItem(day: list[0].date, tasks: list),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 40, right: 40),
                        child: LineSeparator(
                            size: double.maxFinite,
                            color: ThemeColors.secondary2,
                            isDashed: false,
                            axis: Axis.horizontal),
                      )
                    ],
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
