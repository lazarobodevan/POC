import 'package:flutter/material.dart';
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
            TitleH3(text: 'Escovar os dentes'),
            Expanded(
              child: Column(
                children: [
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
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flex(
                            direction: Axis.vertical,
                            children: [
                              Container(
                                width: 1,
                                height: 10,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                              )
                            ],
                          )
                        ],
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flex(
                            direction: Axis.vertical,
                            children: [
                              Container(
                                width: 1,
                                height: 10,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                              )
                            ],
                          )
                        ],
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
