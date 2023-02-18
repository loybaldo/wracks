import 'package:flutter/material.dart';
import '../constant.dart';
import '../generated/l10n.dart';
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
            title: Text(S.of(context).settings),
            leading: const Icon(
              Magicoon.settings_bold_outline,
              color: Colors.indigo,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(S.of(context).feedback),
            leading: Icon(
              Magicoon.star_bold_outline,
              color: Colors.yellow.shade800,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(S.of(context).report_a_problem),
            leading: Icon(
              Magicoon.send_bold_outline,
              color: Colors.orange.shade700,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(S.of(context).terms_and_conditions),
            leading: Icon(
              Magicoon.users_three_bold_outline,
              color: Colors.teal.shade500,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(S.of(context).about_us),
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
