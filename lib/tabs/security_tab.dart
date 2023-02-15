import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SecurityTab extends StatelessWidget {
  const SecurityTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
