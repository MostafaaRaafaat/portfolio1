import 'package:flutter/material.dart';

class PageSix extends StatefulWidget {
  @override
  State<PageSix> createState() => _PageOneState();
}

class _PageOneState extends State<PageSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 132, 240),
        title: const Center(
          child: Text('تفاصيل الرحلة', style: TextStyle(fontFamily: 'Marhey')),
        ),
      ),
    );
  }
}
