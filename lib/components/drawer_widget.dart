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
            leading: const Icon(Magicoon.settings_bold_outline),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Feedback"),
            leading: const Icon(Magicoon.star_bold_outline),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Report a Problem"),
            leading: const Icon(Magicoon.send_bold_outline),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Terms & Conditions"),
            leading: const Icon(Magicoon.users_three_bold_outline),
            onTap: () {},
          ),
          ListTile(
            title: const Text("About Us"),
            leading: const Icon(Magicoon.question_circle_bold_outline),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
