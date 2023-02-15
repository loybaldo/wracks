import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wracks/magicoon.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Networks"),
          surfaceTintColor: Colors.white,
          shadowColor: Colors.black,
          actions: [
            IconButton(
              icon: const Icon(Magicoon.search_bold_outline),
              tooltip: "Search networks",
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Magicoon.sliders_h_bold_outline),
              tooltip: "Network options",
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: CircularPercentIndicator(
                radius: 20.0,
                lineWidth: 4,
                percent: 0.45,
                animation: true,
                center: const Text(
                  "45",
                ),
                progressColor: Colors.blue,
              ),
              title: const Text('i-XWiFi'),
              subtitle: const Text("Not secured"),
              onTap: () {},
            ),
            ListTile(
              leading: CircularPercentIndicator(
                radius: 20.0,
                lineWidth: 4,
                percent: 0.75,
                animation: true,
                center: const Text(
                  "75",
                ),
                progressColor: Colors.orange,
              ),
              title: const Text('XPRO'),
              subtitle: const Text("Secured"),
              onTap: () {},
            ),
            ListTile(
              leading: CircularPercentIndicator(
                radius: 20.0,
                lineWidth: 4,
                percent: 1,
                animation: true,
                center: const Text(
                  "125",
                ),
                progressColor: Colors.red,
              ),
              title: const Text('Jessa'),
              subtitle: const Text("Secured"),
              onTap: () {},
            ),
          ],
        ));
  }
}
