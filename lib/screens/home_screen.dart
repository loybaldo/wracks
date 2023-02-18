import 'package:flutter/material.dart';
import 'package:wracks/generated/l10n.dart';
import 'package:wracks/constant.dart';
import '../components/drawer_widget.dart';
import '../magicoon.dart';
import '../tabs/home_tab.dart';
import '../tabs/security_tab.dart';
import '../tabs/dictionary_tab.dart';
import '../tabs/saved_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeTab(),
    const SecurityTab(),
    const DictionariesTab(),
    const SavedTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Magicoon.menu_bold_outline,
              color: Colors.white,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: kPrimary,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          elevation: 0,
          iconTheme:
              MaterialStateProperty.all(IconThemeData(color: kIconColor)),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.bold,
              color: kIconColor,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (currentIndex) => setState(() {
            _currentIndex = currentIndex;
          }),
          animationDuration: const Duration(seconds: 1),
          destinations: [
            NavigationDestination(
              icon: const Icon(Magicoon.home_bold_outline),
              selectedIcon: const Icon(Magicoon.home),
              tooltip: S.of(context).dashboard,
              label: S.of(context).dashboard,
            ),
            NavigationDestination(
              icon: const Icon(Magicoon.shield_bold_outline),
              selectedIcon: const Icon(Magicoon.shield),
              tooltip: S.of(context).security,
              label: S.of(context).security,
            ),
            NavigationDestination(
              icon: const Icon(Magicoon.package_bold_outline),
              selectedIcon: const Icon(Magicoon.package),
              tooltip: S.of(context).dictionary,
              label: S.of(context).dictionary,
            ),
            NavigationDestination(
              icon: const Icon(Magicoon.bookmark_bold_outline),
              selectedIcon: const Icon(Magicoon.bookmark),
              tooltip: S.of(context).saved,
              label: S.of(context).saved,
            ),
          ],
        ),
      ),
    );
  }
}
