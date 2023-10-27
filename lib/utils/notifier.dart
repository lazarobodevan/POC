import 'package:flutter/material.dart';
import 'package:poc/components/button.dart';
import 'package:poc/theme/theme.dart';

class Notifier {
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showToast(
      BuildContext context,
      String message,
      Color backgroundColor,
      VoidCallback action,
      Color? textColor) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: backgroundColor,
        elevation: 0,
        content: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              message.toUpperCase(),
              style: TextStyle(
                  color: textColor ?? ThemeColors.secondaryWhite,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        action: SnackBarAction(
            label: "Desfazer",
            textColor: ThemeColors.secondaryWhite,
            onPressed: () {

            }),
      ),
    );
  }

  static Future<void> showAlertDialog(BuildContext context, String title,
      String text, VoidCallback confirm) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Ink(
                  width: 40,
                  height: 40,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(40),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.cancel,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(
                    text: "Confirmar",
                    onTap: confirm,
                  )
                ],
              ),
            ),
          );
        });
  }
}
