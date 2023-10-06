import 'package:flutter/material.dart';
import 'package:poc/activities/tasks_database.dart';
import 'package:poc/components/button.dart';
import 'package:poc/components/color_picker.dart';
import 'package:poc/components/date_picker.dart';
import 'package:poc/components/label.dart';
import 'package:poc/components/time_picker.dart';
import 'package:poc/components/title.dart';
import 'package:poc/models/Task.dart';
import 'package:poc/theme/theme.dart';

class InitialConfiguration extends StatefulWidget {
  const InitialConfiguration({super.key});

  @override
  State<InitialConfiguration> createState() => _InitialConfigurationState();
}

class _InitialConfigurationState extends State<InitialConfiguration> {

  var tasks = [
    TasksDatabase.EscovarDentes,
    TasksDatabase.Estudar,
    TasksDatabase.LavarRoupa,
    TasksDatabase.IrParaAula,
  ];

  var images = [
    'assets/images/brushteeth.png',
    'assets/images/study.png',
    'assets/images/laundry.png',
    'assets/images/class.png'
  ];

  var currentIndex = 0;

  var colors = [
    ThemeColors.optionColor1,
    ThemeColors.optionColor2,
    ThemeColors.optionColor3,
    ThemeColors.optionColor4,
    ThemeColors.optionColor5
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: TitleH3(text: 'Configuração inicial'),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 216,
              height: 46,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: tasks[currentIndex].color),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(tasks[currentIndex].name,
                        style: const TextStyle(
                            color: ThemeColors.secondaryWhite, fontSize: 18)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 30, bottom: 30, left: 40, right: 40),
              child: Row(
                children: [
                  DatePicker(),
                  SizedBox(
                    width: 10,
                  ),
                  TimePicker()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Label(text: 'Cor da tarefa'),
                  SizedBox(height: 50, child: ColorPicker(colors: colors, defaultSelected: tasks[currentIndex].color,)),
                ],
              ),
            ),
            Center(
              child: Image.asset(
                images[currentIndex],
                width: 323,
                height: 267,
              ),
            ),
            Center(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ThemeColors.primary1),
                child: Center(
                  child: Text(
                    "${currentIndex + 1}/${tasks.length}",
                    style: TextStyle(
                        color: ThemeColors.secondaryWhite,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                    text: 'Anterior',
                    onTap: () {
                      if (currentIndex == 0) return;
                      setState(() {
                        currentIndex--;
                      });
                    }),
                const SizedBox(
                  width: 10,
                ),
                Button(
                    text: currentIndex != tasks.length - 1
                        ? 'Próximo'
                        : 'Concluir',
                    onTap: () {
                      if (currentIndex == tasks.length - 1) {
                        Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        setState(() {
                          currentIndex++;
                        });
                      }
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
