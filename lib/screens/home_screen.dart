import 'package:flutter/material.dart';

import '../tabs/dictionary_tab.dart';
import '../tabs/menu_tab.dart';
import '../tabs/network_tab.dart';
import '../tabs/task_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const NetworkTab(),
    const TaskTab(),
    const DictionariesTab(),
    const MenuTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: NavigationBarTheme(
            data: const NavigationBarThemeData(surfaceTintColor: Colors.white),
            child: NavigationBar(
              selectedIndex: _currentIndex,
              onDestinationSelected: (currentIndex) => setState(() {
                _currentIndex = currentIndex;
              }),
              animationDuration: const Duration(seconds: 1),
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.signal_wifi_statusbar_null_rounded),
                    selectedIcon:
                        Icon(Icons.signal_wifi_statusbar_4_bar_rounded),
                    tooltip: "Networks",
                    label: "Networks"),
                NavigationDestination(
                    icon: Icon(Icons.integration_instructions_outlined),
                    selectedIcon: Icon(Icons.integration_instructions_rounded),
                    tooltip: "Tasks",
                    label: "Tasks"),
                NavigationDestination(
                    icon: Icon(Icons.inventory_2_outlined),
                    selectedIcon: Icon(Icons.inventory_2_rounded),
                    tooltip: "Dictionaries",
                    label: "Dictionaries"),
                NavigationDestination(
                    icon: Icon(Icons.menu_rounded),
                    selectedIcon: Icon(Icons.menu_open_rounded),
                    tooltip: "Menu",
                    label: "Menu"),
              ],
            )));
  }
}
