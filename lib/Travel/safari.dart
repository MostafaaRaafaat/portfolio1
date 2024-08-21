import 'package:first_app/trips_page.dart/detils_family.dart';
import 'package:flutter/material.dart';

class Safari extends StatefulWidget {
  const Safari({super.key});

  @override
  State<Safari> createState() => _FamilyState();
}

class _FamilyState extends State<Safari> {
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
        itemCount: 8, // Set the number of items in your grid
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    imagePath:
                        'images/${index + 1}.s.jpg', // Pass the imagePath
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
                  image: AssetImage('images/${index + 1}.s.jpg'),
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
