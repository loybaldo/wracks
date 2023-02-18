import 'package:flutter/material.dart';
import '../components/dashboard_header.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          DashboardHeader(),
        ],
      ),
    );
  }
}
