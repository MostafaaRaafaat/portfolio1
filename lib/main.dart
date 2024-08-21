import 'package:first_app/family.dart/page_five.dart';
import 'package:first_app/family.dart/page_four.dart';
import 'package:first_app/family.dart/page_one.dart';
import 'package:first_app/family.dart/page_six.dart';
import 'package:first_app/family.dart/page_three.dart';
import 'package:first_app/family.dart/page_two.dart';
import 'package:first_app/trips.dart';

import 'package:first_app/Travel/family.dart';

import 'package:first_app/Travel/safari.dart';

import 'package:first_app/Travel/summer.dart';
import 'package:first_app/Travel/wintter.dart';
import 'package:first_app/drawer.dart/acount.dart';
import 'package:first_app/drawer.dart/connect.dart';
import 'package:first_app/drawer.dart/favorite.dart';
import 'package:first_app/drawer.dart/payment.dart';
import 'package:first_app/drawer.dart/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Trips(),
      routes: {
        'family': (context) => Family(),
        'wintter': (context) => Wintter(),
        'safari': (context) => Safari(),
        'summer': (context) => Summer(),
        'acount': (context) => Acount(),
        'trips': (context) => Trips(),
        'favorite': (context) => Favorite(),
        'connect': (context) => Connect(),
        'payment': (context) => Payment(),
        'settings': (context) => Settings(),
        'page_one': (context) => PageOne(),
        'page_two': (context) => PageTwo(),
        'page_three': (context) => PageThree(),
        'page_four': (context) => PageFour(),
        'page_five': (context) => PageFive(),
        'page_six': (context) => PageSix(),
      },
    );
  }
}
