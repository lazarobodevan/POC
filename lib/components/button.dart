import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class Button extends StatelessWidget {
  final String text;
  final Function() onTap;

  const Button({required this.text, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 164,
      height: 62,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.32),
              offset: Offset(0, 4),
              blurRadius: 8,
            )
          ]),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text.toUpperCase(),
              style: const TextStyle(
                fontSize: 14,
                color: ThemeColors.secondaryWhite,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
