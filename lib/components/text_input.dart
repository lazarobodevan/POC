import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class TextInput extends StatelessWidget {
  final double width;
  final double height;
  final String placeholder;

  const TextInput(
      {required this.width,
      required this.height,
      required this.placeholder,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: placeholder,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: ThemeColors.secondary4, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
                const BorderSide(color: ThemeColors.secondary4, width: 1),
          ),
        ),
      ),
    );
  }
}
