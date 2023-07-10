import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class TaskCard extends StatelessWidget {
  final String time;
  final String name;
  final Color color;
  final String? description;

  const TaskCard(
      {super.key,
      required this.time,
      required this.name,
      this.description,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Ink(
        width: double.maxFinite,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: InkWell(
          onTap: () {Navigator.pushNamed(context, '/step');},
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${time}h",
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Ink(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
                            name,
                            style: const TextStyle(
                                fontSize: 27,
                                color: ThemeColors.secondaryWhite,
                                fontFamily: 'NotoSerif'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 40),
                          child: description != null ? Text(description!,style: TextStyle(color: ThemeColors.secondary1),) : Text(''),
                        )
                      ],
                    )
                    ,
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
