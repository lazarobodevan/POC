import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

import '../models/Task.dart';

class TaskCard extends StatelessWidget {
  final Task task;

  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Ink(
        width: double.maxFinite,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: task.color,
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/step', arguments: task);
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${task.date.hour}h",
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Ink(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: const Icon(
                          Icons.more_horiz,
                          size: 40,
                          color: ThemeColors.secondaryWhite,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 40),
                          child: Text(
                            task.name,
                            style: const TextStyle(
                                fontSize: 27,
                                color: ThemeColors.secondaryWhite,
                                fontFamily: 'NotoSerif'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 40),
                          child: task.description != null
                              ? SizedBox(
                                  width: 220,
                                  child: Text(
                                    task.description!,
                                    style: const TextStyle(
                                        color: ThemeColors.secondaryWhite,
                                        overflow: TextOverflow.ellipsis),
                                  ))
                              : const Text(''),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
