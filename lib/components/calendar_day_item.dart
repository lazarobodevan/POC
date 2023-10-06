import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:poc/components/LineSeparator.dart';
import 'package:poc/theme/theme.dart';

import '../models/Task.dart';

class CalendarDayItem extends StatefulWidget {
  final DateTime day;
  final List<Task> tasks;

  const CalendarDayItem({super.key, required this.day, required this.tasks});

  @override
  State<CalendarDayItem> createState() => _CalendarDayItemState();
}

class _CalendarDayItemState extends State<CalendarDayItem> {
  @override
  void initState() {
    super.initState();
    initializeDateFormatting('pt_BR', null);
  }

  String _capitalize(String str) {
    return "${str[0].toUpperCase()}${str.substring(1)}";
  }

  String _getMonth() {
    String month = DateFormat('MMMM', 'pt_BR').format(widget.day);
    return _capitalize(month);
  }

  String _getDay() {
    String day = DateFormat('EEE', 'pt_BR').format(widget.day);
    return _capitalize(day);
  }
  

  bool _isToday(){
    return DateUtils.isSameDay(widget.day, DateTime.now().subtract(Duration(hours: 3)));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Day info
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 85,
                height: 48,
                decoration: BoxDecoration(
                  color: _isToday() ? ThemeColors.primary3 : Colors.transparent,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.day.day.toString(),
                        style: TextStyle(
                            color: _isToday() ? ThemeColors.secondaryWhite : ThemeColors.primary4,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _getMonth(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      _getDay(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
          //Tasks in that day
           Expanded(
            child: Column(
              children: widget.tasks.asMap().entries.map((task){
                print(task.key);
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${task.value.date.hour}:${task.value.date.minute}h"),
                            Icon(Icons.settings, color: ThemeColors.secondaryBlack.withOpacity(0.5)),
                          ],
                        ),
                        Text(task.value.name),
                        task.key != widget.tasks.length-1 ? const LineSeparator(
                          size: double.maxFinite,
                          color: ThemeColors.secondary2,
                          isDashed: false,
                          axis: Axis.horizontal,
                        ): const SizedBox(),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                );

              }).toList(),

            ),
          )
        ],
      ),
    );
  }
}
