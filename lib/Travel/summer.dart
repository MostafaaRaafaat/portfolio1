import 'package:first_app/trips_page.dart/detils_family.dart';
import 'package:flutter/material.dart';

class Summer extends StatefulWidget {
  const Summer({super.key});

  @override
  State<Summer> createState() => _FamilyState();
}

class _FamilyState extends State<Summer> {
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
        itemCount: 8,
        itemBuilder: (context, mm) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    imagePath: 'images/${mm + 1}.mm.jpg',
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
                  image: AssetImage('images/${mm + 1}.mm.jpg'),
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
