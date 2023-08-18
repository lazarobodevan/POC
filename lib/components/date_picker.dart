import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:poc/components/label.dart';

import '../theme/theme.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? selectedDate;
  var now = DateTime.now().subtract(const Duration(hours: 3));

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(now.year, now.month + 4, now.day))
        .then((value) {
      setState(() {
        selectedDate = value!;
      });
    });
  }

  String _getFormattedDate() {
    if (selectedDate != null) {
      return DateFormat('dd/MM/yy').format(selectedDate!);
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Label(text: 'Data'),
          InkWell(
            onTap: _showDatePicker,
            child: Container(
              width: double.maxFinite,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 1,
                    color: ThemeColors.secondary4,
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: (Row(
                  children: [
                    const Icon(Icons.calendar_month,
                        color: ThemeColors.secondary4),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                        selectedDate != null ? _getFormattedDate() : 'dd/mm/aa')
                  ],
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
