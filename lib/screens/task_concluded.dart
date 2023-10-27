import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TaskConcluded extends StatelessWidget {
  const TaskConcluded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Lottie.asset('assets/lotties/trophy.json')
        ],
      ),
    );
  }
}
