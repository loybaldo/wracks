import 'package:flutter/material.dart';
import '../constant.dart';
import '../magicoon.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: kPrimary,
            ),
            child: Text(""),
          ),
          ListTile(
            title: const Text("Settings"),
            leading: const Icon(
              Magicoon.settings_bold_outline,
              color: Colors.indigo,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Feedback"),
            leading: Icon(
              Magicoon.star_bold_outline,
              color: Colors.yellow.shade800,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Report a Problem"),
            leading: Icon(
              Magicoon.send_bold_outline,
              color: Colors.orange.shade700,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Terms & Conditions"),
            leading: Icon(
              Magicoon.users_three_bold_outline,
              color: Colors.teal.shade500,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text("About Us"),
            leading: Icon(
              Magicoon.question_circle_bold_outline,
              color: Colors.blue.shade700,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
