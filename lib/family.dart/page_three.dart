import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  @override
  State<PageThree> createState() => _PageOneState();
}

class _PageOneState extends State<PageThree> {
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
