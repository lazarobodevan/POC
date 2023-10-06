import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:poc/activities/tasks_database.dart';
import 'package:poc/components/task_card.dart';
import 'package:poc/components/title.dart';
import 'package:poc/theme/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    
    var _today = DateTime.now().subtract(Duration(hours: 3));
    
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const TitleH3(text: 'Olá, João!'),
                  const Text(
                    'Essas são as tarefas de',
                    style: TextStyle(fontSize: 18),
                  ),
                  TitleH3(text: 'Hoje, ${DateFormat("dd/MM").format(_today)}')
                ],
              ),
            ),
           Expanded(
             flex: 8,
             child: Padding(
               padding: const EdgeInsets.only(left: 20, right: 20,),
               child: ListView(
                  shrinkWrap: true,
                  children: [
                    TaskCard(task: TasksDatabase.EscovarDentes,),
                    TaskCard(task: TasksDatabase.Estudar,),
                    TaskCard(task: TasksDatabase.LavarRoupa),
                    TaskCard(task: TasksDatabase.IrParaAula),
                  ],
          ),
             ),
           )
        ],
      ),
    );
  }
}
