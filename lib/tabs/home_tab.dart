import 'package:flutter/material.dart';
import 'package:wracks/constant.dart';
import '../components/dashboard_header.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const DashboardHeader(),
          Padding(
            padding: const EdgeInsets.all(kDefPadding),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const <Widget>[
                Card(),
                Card(),
                Card(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
