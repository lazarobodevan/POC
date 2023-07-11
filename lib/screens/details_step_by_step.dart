import 'package:flutter/material.dart';
import 'package:poc/components/LineSeparator.dart';
import 'package:poc/components/title.dart';
import 'package:poc/theme/theme.dart';

class DetailsStepByStep extends StatelessWidget {
  const DetailsStepByStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: TitleH3(text: 'Escovar os dentes'),
            ),
            Expanded(
              child: ListView(
                children: [Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Imagem
                            Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                  border: Border.all(color: ThemeColors.primary1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(
                                Icons.bluetooth_drive,
                                size: 100,
                              ),
                            ),
                            //Descricao
                            const Text('Pegar a Escova')
                          ],
                        ),

                        //Separador
                        const Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [

                                    LineSeparator(
                                        color: Colors.blue,
                                        size: 10,
                                        axis: Axis.vertical,
                                        isDashed: true),
                                    _StepCounter(step: 1),
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 130,
                              height: 130,
                            )
                          ],
                        ),
                        //Separador
                        const Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [

                                    LineSeparator(
                                        color: Colors.blue,
                                        size: 10,
                                        axis: Axis.vertical,
                                        isDashed: true),
                                    _StepCounter(step: 2),
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
                                  border: Border.all(color: ThemeColors.primary1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(
                                Icons.bluetooth_drive,
                                size: 100,
                              ),
                            ),
                            const Text('Pegar a Escova')
                          ],
                        )
                      ],
                    ),
                  ],
                ),]
              ),
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
        color: ThemeColors.primary4,
        borderRadius: BorderRadius.circular(50)
      ),
      child: Center(child: Text(step.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)),
    );
  }
}

