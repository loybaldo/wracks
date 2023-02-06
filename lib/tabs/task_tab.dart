import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskTab extends StatelessWidget {
  const TaskTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tasks"),
        ),
        body: Center(
          child: CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 10,
            percent: 0.75,
            animation: true,
            center: const Text("75%"),
            progressColor: Colors.blue,
          ),
        ));
  }
}
