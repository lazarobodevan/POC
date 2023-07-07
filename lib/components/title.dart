import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class TitleH3 extends StatelessWidget {
  final String text;

  const TitleH3({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w400,
          color: ThemeColors.secondaryBlack),
    );
  }
}
