import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:poc/components/button.dart';
import 'package:poc/components/checkbox.dart';
import 'package:poc/components/color_picker.dart';
import 'package:poc/components/date_picker.dart';
import 'package:poc/components/label.dart';
import 'package:poc/components/text_input.dart';
import 'package:poc/components/time_picker.dart';
import 'package:poc/components/title.dart';
import 'package:poc/theme/theme.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  var itemSelecionado;

  var repeatDays = {
    "dom": false,
    "seg": false,
    "ter": false,
    "qua": false,
    "qui": false,
    "sex": false,
    "sab": false
  };
  var colors = [
    ThemeColors.optionColorGreen,
    ThemeColors.optionColorPurple,
    ThemeColors.optionColorLilac,
    ThemeColors.optionColorOrange,
    ThemeColors.optionColorPink
  ];

  void _handleCheckboxChange(String day) {
    repeatDays[day] = !repeatDays[day]!;
  }

  @override
  Widget build(BuildContext context) {
    const items = ['Estudar para prova', 'Aula', 'Cortar as unhas'];

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TitleH3(text: 'Adicionar tarefa'),
            const SizedBox(
              height: 30,
            ),

            //TODO: Transform into a widget

            DropdownButtonFormField(
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeColors.secondary4)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ThemeColors.secondary4))),
              isExpanded: true,
              items: items.map((String dropdownStringItem) {
                return DropdownMenuItem(
                    value: dropdownStringItem, child: Text(dropdownStringItem));
              }).toList(),
              onChanged: (selected) {
                setState(() {
                  itemSelecionado = selected;
                });
              },
              hint: itemSelecionado != null
                  ? Text(itemSelecionado)
                  : const Text('Selecione a tarefa'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                DatePicker(),
                SizedBox(
                  width: 10,
                ),
                TimePicker()
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const TextInput(
                width: double.maxFinite, height: 60, placeholder: "Descrição"),
            const SizedBox(
              height: 25,
            ),
            const Label(text: 'Quando essa tarefa se repete?'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CustomCheckbox(
                      value: "seg",
                      name: "Segunda",
                      onChange: _handleCheckboxChange,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomCheckbox(
                      value: "ter",
                      name: "Terça",
                      onChange: _handleCheckboxChange,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomCheckbox(
                      value: "qua",
                      name: "Quarta",
                      onChange: _handleCheckboxChange,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomCheckbox(
                      value: "qui",
                      name: "Quinta",
                      onChange: _handleCheckboxChange,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    CustomCheckbox(
                      value: "sex",
                      name: "Sexta",
                      onChange: _handleCheckboxChange,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomCheckbox(
                      value: "sab",
                      name: "Sábado",
                      onChange: _handleCheckboxChange,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomCheckbox(
                      value: "dom",
                      name: "Domingo",
                      onChange: _handleCheckboxChange,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Label(text: "Cor da tarefa"),
            const SizedBox(
              height: 5,
            ),
            SizedBox(height: 50, child: ColorPicker(colors: colors)),
            const SizedBox(
              height: 40,
            ),
            Center(child: Button(text: 'Concluir', onTap: () {})),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
