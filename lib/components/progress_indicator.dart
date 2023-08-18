import 'package:flutter/material.dart';
import 'package:poc/theme/theme.dart';

class MyProgressIndicator extends StatelessWidget {
  final int value;
  final int total;

  const MyProgressIndicator({super.key, required this.value, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: 22,
              decoration: BoxDecoration(
                  color: ThemeColors.secondary3,
                  borderRadius: BorderRadius.circular(5)),
            ),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constrains) {
                return Container(
                  width: (value / 100) * constrains.maxWidth,
                  height: 22,
                  decoration: BoxDecoration(
                      color: ThemeColors.primary4,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text("{valor}%")],
                    ),
                  ),
                );
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('{total}', style: TextStyle(color: ThemeColors.primary1),),
            Icon(Icons.star, color: ThemeColors.primary2,size: 20,)
          ],
        )
      ],
    );
  }
}
