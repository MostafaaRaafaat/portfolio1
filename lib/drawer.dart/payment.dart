import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 134, 148),
        title: const Center(
          child: Text(
            ' طريقه الدفع',
            style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
          ),
        ),
      ),
    );
  }
}
