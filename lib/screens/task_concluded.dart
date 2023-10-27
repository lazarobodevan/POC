import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:poc/components/button.dart';
import 'package:poc/theme/theme.dart';

class TaskConcluded extends StatelessWidget {
  const TaskConcluded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Lottie.asset('assets/lotties/trophy.json'),
          Center(
            child: Column(
              children: [
                RichText(
                  text: const TextSpan(
                    text: "Tarefa ",
                    style: TextStyle(
                        color: ThemeColors.primary1,
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                        fontFamily: "NotoSerif"),
                    children: [
                      TextSpan(
                          text: "concluída!",
                          style: TextStyle(color: ThemeColors.primary4))
                    ],
                  ),
                ),
                const Text("+5 pontos!", style: TextStyle(color: ThemeColors.semanticGreen, fontSize: 20),),
                const SizedBox(height: 40,),
                Button(text: "Voltar ao início", onTap: (){Navigator.pushReplacementNamed(context, "/home");})
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              "assets/images/taskCompletedCurve.svg",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
