import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poc/components/progress_indicator.dart';
import 'package:poc/components/title.dart';
import 'package:poc/theme/theme.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleH3(text: 'Progresso'),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/images/stars.svg'),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: const TextSpan(
                    text: '2 ',
                    style: TextStyle(
                      color: ThemeColors.semanticGreen,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: 'estrelas',
                        style: TextStyle(
                          color: ThemeColors.primary3,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Iniciante das tarefas',
              style: TextStyle(fontSize: 18),
            ),
            const MyProgressIndicator(value: 50,total: 4,),
            const SizedBox(height: 60,),
            Center(
              child: Image.asset('assets/images/podium.png'),
            )
          ],
        ),
      ),
    );
  }
}
