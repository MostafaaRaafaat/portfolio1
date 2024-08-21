import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 134, 148),
        title: const Center(
          child: Center(
            child: Text(
              '  الاعدادات',
              style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
            ),
          ),
        ),
      ),
    );
  }
}
