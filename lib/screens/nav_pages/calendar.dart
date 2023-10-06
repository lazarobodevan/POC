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
  var today = DateTime.now().subtract(Duration(hours: 3));
  List<List<Task>> tasks = [
    [
      Task(
          id: '1',
          name: 'Escovar os dentes',
          description: '',
          date: DateTime(2023, 08, 16),
          steps: []),
      Task(
          id: '2',
          name: 'Estudar',
          description: '',
          date: DateTime(2023, 08, 16),
          steps: []),
    ],
    [
      Task(
          id: '3',
          name: 'Escovar os dentes',
          description: '',
          date: DateTime(2023, 08, 17),steps: []),
    ],
    [
      Task(
          id: '4',
          name: 'Escovar os dentesaaa',
          description: '',
          date: DateTime(2023, 08, 18),steps: []),
    ],
    [
      Task(
          id: '4',
          name: 'Escovar os dentes',
          description: '',
          date: DateTime(2023, 08, 19),steps: []),
      Task(
          id: '4',
          name: 'Escovar os dentes',
          description: '',
          date: DateTime(2023, 08, 19),steps: []),
      Task(
          id: '4',
          name: 'Escovar os dentes',
          description: '',
          date: DateTime(2023, 08, 19),steps: []),
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
