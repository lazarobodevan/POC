import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class LineSeparator extends StatelessWidget {
  final double size;
  final Color color;
  final bool isDashed;
  final Axis axis;

  const LineSeparator(
      {super.key, required this.size, required this.color, required this.isDashed, required this.axis});

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      dashColor: color,
      lineThickness: 5,
      direction: axis,
      lineLength: 150,
      dashLength: 25,
      dashRadius: 20,
      dashGapLength: 15,
    );
  }
}
