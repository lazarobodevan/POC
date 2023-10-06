import 'package:flutter/material.dart';
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
    Task(name: 'Escovar os dentes', date: DateTime.now(), id: '1', steps: []),
    Task(name: 'Tomar banho', date: DateTime.now(), id: '2', steps: []),
  ];

  var currentIndex = 0;

  var colors = [
    ThemeColors.optionColorGreen,
    ThemeColors.optionColorPurple,
    ThemeColors.optionColorLilac,
    ThemeColors.optionColorOrange,
    ThemeColors.optionColorPink
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
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: ThemeColors.primary3),
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
                  SizedBox(height: 50, child: ColorPicker(colors: colors)),
                ],
              ),
            ),
            Center(
              child: Image.network(
                'https://www.colgate.com/content/dam/cp-sites/oral-care/oral-care-center/en-in/occ/basics/brushing-and-flossing/how-long-should-you-brush-your-teeth-for.jpg.rendition.688.387.jpg',
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
                      }
                      setState(() {
                        currentIndex++;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
