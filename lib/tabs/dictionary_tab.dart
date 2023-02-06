import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text("Dictionaries"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            tooltip: "Search dictionaries",
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.folder_outlined),
            tooltip: "Browse dictionaries",
            onPressed: () {
              openFile();
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.data_object_rounded),
            ),
            title: const Text('Default Passwords'),
            subtitle: const Text("Juanito Baldo Jr."),
            onTap: () {},
          ),
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.all_inclusive_rounded),
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
