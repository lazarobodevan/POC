import 'package:flutter/material.dart';
import 'package:poc/components/LineSeparator.dart';
import 'package:poc/components/button.dart';
import 'package:poc/components/title.dart';
import 'package:poc/theme/theme.dart';

import '../models/Task.dart';

class DetailsStepByStep extends StatelessWidget {
  final Task task;

  const DetailsStepByStep({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: TitleH3(text: task.name),
            ),
            Expanded(
              child: ListView(children: [
                Column(
                    children: task.steps
                        .asMap()
                        .entries
                        .map(
                          (step) => step.key % 2 == 0
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //Imagem
                                        Container(
                                            width: 130,
                                            height: 130,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        ThemeColors.primary1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                                child: Image.asset(
                                                    step.value.image))),
                                        //Descricao
                                        Container(
                                            width: 130,
                                            child: Text(step.value.description))
                                      ],
                                    ),

                                    //Separador
                                    Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                const LineSeparator(
                                                    color: Colors.blue,
                                                    size: 10,
                                                    axis: Axis.vertical,
                                                    isDashed: true),
                                                _StepCounter(
                                                    step: step.key + 1),
                                              ],
                                            )
                                          ]),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 130,
                                          height: 130,
                                        )
                                      ],
                                    )
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 130,
                                          height: 130,
                                        )
                                      ],
                                    ),
                                    //Separador
                                    Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                const LineSeparator(
                                                    color: Colors.blue,
                                                    size: 10,
                                                    axis: Axis.vertical,
                                                    isDashed: true),
                                                _StepCounter(
                                                    step: step.key + 1),
                                              ],
                                            )
                                          ]),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                            width: 130,
                                            height: 130,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color:
                                                        ThemeColors.primary1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                                child: Image.asset(
                                                    step.value.image))),
                                        Container(
                                            width: 130,
                                            child: Text(step.value.description))
                                      ],
                                    )
                                  ],
                                ),
                        )
                        .toList()),
                SizedBox(height: 40,),
                Center(
                  child: Column(
                    children: [
                      Image.asset("assets/atividades/EscovarDentes/end.png",width: 140),
                      Text("Muito bem!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 40,),

                 Center(child: Button(text: "Concluir", onTap: (){Navigator.pop(context);}),),
                SizedBox(height: 60,)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

//-------------Step Counter Widget-------------------
class _StepCounter extends StatelessWidget {
  final int step;

  const _StepCounter({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: ThemeColors.primary4, borderRadius: BorderRadius.circular(50)),
      child: Center(
          child: Text(
        step.toString(),
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      )),
    );
  }
}
