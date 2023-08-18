import 'package:flutter/material.dart';
import 'package:poc/components/label.dart';

import '../theme/theme.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay? selectedTime;

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        selectedTime = value!;
      });
    });
  }

  String _getFormattedTime() {
    return '${selectedTime?.hour}:${selectedTime?.minute}';
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Label(text: 'Hora'),
          InkWell(
            onTap: _showTimePicker,
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
                    const Icon(Icons.access_time,
                        color: ThemeColors.secondary4),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(selectedTime != null ? _getFormattedTime() : 'hh:mm')
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
