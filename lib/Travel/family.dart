import 'package:flutter/material.dart';

class Family extends StatefulWidget {
  const Family({super.key});

  @override
  State<Family> createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
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
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('images/1.f.jpg'), fit: BoxFit.cover),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('page_one');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('images/2.f.jpg'), fit: BoxFit.cover),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('page_two');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('images/3.f.jpg'), fit: BoxFit.cover),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('page_three');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('images/4.f.jpg'), fit: BoxFit.cover),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('page_four');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('images/5.f.jpg'), fit: BoxFit.cover),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('page_five');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('images/6.f.jpg'), fit: BoxFit.cover),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('page_six');
              },
            ),
          ),
        ],
      ),
    );
  }
}
