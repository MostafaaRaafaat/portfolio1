import 'package:flutter/material.dart';

class DetilsSummer extends StatelessWidget {
  final DetilsSummer imagePath;

  const DetilsSummer({Key? key, required this.imagePath}) : super(key: key);

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
