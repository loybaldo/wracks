import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:wracks/magicoon.dart';

class DictionariesTab extends StatelessWidget {
  const DictionariesTab({super.key});

  void openFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: false,
        allowedExtensions: ["zip"]);
    if (result != null) {
      PlatformFile file = result.files.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Magicoon.package_bold_outline),
            ),
            title: const Text('Default Passwords'),
            subtitle: const Text("Juanito Baldo Jr."),
            onTap: () {},
          ),
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Magicoon.package_bold_outline),
            ),
            title: const Text('Brute Force'),
            subtitle: const Text("Juanito Baldo Jr."),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
