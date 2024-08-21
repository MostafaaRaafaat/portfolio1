import 'package:first_app/trips_page.dart/detils_Winter.dart';

import 'package:flutter/material.dart';

class Wintter extends StatefulWidget {
  @override
  State<Wintter> createState() => _FamilyState();
}

class _FamilyState extends State<Wintter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 132, 240),
        title: const Center(
          child: Text(
            'رحلات عائليه',
            style: TextStyle(fontFamily: 'Marhey'),
          ),
        ),
      ),
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 6, // Set the number of items in your grid
        itemBuilder: (context, w) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetilsWinter(
                    imagePath: 'images/${w + 1}.w.jpg', // Pass the imagePath
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('images/${w + 1}.w.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
