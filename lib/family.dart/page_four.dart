import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  @override
  State<PageFour> createState() => _PageOneState();
}

class _PageOneState extends State<PageFour> {
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
