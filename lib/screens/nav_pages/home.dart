import 'package:flutter/material.dart';
import 'package:poc/components/task_card.dart';
import 'package:poc/components/title.dart';
import 'package:poc/theme/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.pushNamed(context, '/addTask');},
        backgroundColor: ThemeColors.primary1,
        shape: const CircleBorder(),

        child: const Icon(Icons.add, color: ThemeColors.secondaryWhite,),
      ),
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(color: ThemeColors.secondaryWhite),
              height: 180,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TitleH3(text: 'Olá, João!'),
                  Text(
                    'Essas são as tarefas de',
                    style: TextStyle(fontSize: 18),
                  ),
                  TitleH3(text: 'Hoje, 22/06')
                ],
              ),
            ),
           Expanded(
             flex: 8,
             child: Padding(
               padding: const EdgeInsets.only(left: 20, right: 20,),
               child: ListView(
                  shrinkWrap: true,
                  children: const [
                    TaskCard(time: '10:00', name: 'Escovar os dentes', color: ThemeColors.optionColorOrange,),
                    TaskCard(time: '10:00', name: 'Estudar para prova', description: 'Prova de ESOF', color: ThemeColors.optionColorPurple,),
                    TaskCard(time: '10:00', name: 'Almoçar', color: ThemeColors.optionColorGreen,),
                    TaskCard(time: '10:00', name: 'Escovar os dentes', color: ThemeColors.optionColorOrange,),
                  ],
          ),
             ),
           )
        ],
      ),
    );
  }
}
