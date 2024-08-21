import 'package:flutter/material.dart';

class Acount extends StatefulWidget {
  const Acount({super.key});

  @override
  State<Acount> createState() => _AcountState();
}

class _AcountState extends State<Acount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 134, 148),
        title: Center(
          child: const Text(
            '  حسابي',
            style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
          ),
        ),
      ),
    );
  }
}
