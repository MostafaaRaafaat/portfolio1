import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 134, 148),
        title: const Center(
          child: Text(
            ' الرحلات المفضله',
            style: TextStyle(fontSize: 20, fontFamily: 'Marhey'),
          ),
        ),
      ),
    );
  }
}
