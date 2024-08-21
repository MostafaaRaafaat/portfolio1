import 'dart:core';

import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  static var favorite;

  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState(
      airLine: 'Delta AirLine',
      flightNumber: 'DL 123',
      arrivalCity: 'New York',
      arrivalTime: '22:10 , 30/9/2024',
      departureTime: '22:10 , 1/10/2024',
      TravelTime: '7 Days');
}

class _PageOneState extends State<PageOne> {
  final String airLine;
  final String flightNumber;
  final String arrivalCity;
  final String arrivalTime;
  final String departureTime;
  final String TravelTime;
  bool favorite = false;

  _PageOneState(
      {this.favorite = false,
      required this.TravelTime,
      required this.departureTime,
      required this.airLine,
      required this.flightNumber,
      required this.arrivalCity,
      required this.arrivalTime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 70, 132, 240),
        title: const Center(
          child: Text('تفاصيل الرحلة', style: TextStyle(fontFamily: 'Marhey')),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AirLine : $airLine',
                style: TextStyle(fontSize: 25, fontFamily: 'Marhey'),
              ),
              Divider(
                height: 30,
              ),
              Text('FlightNumber : $flightNumber',
                  style: TextStyle(fontSize: 25, fontFamily: 'Marhey')),
              Divider(
                height: 30,
              ),
              Text('ArriveCity : $arrivalCity',
                  style: TextStyle(fontSize: 25, fontFamily: 'Marhey')),
              Divider(
                height: 30,
              ),
              Text('TravelTime : $TravelTime',
                  style: TextStyle(fontSize: 25, fontFamily: 'Marhey')),
              Divider(
                height: 30,
              ),
              Text('DepartureTime : $departureTime',
                  style: TextStyle(fontSize: 25, fontFamily: 'Marhey')),
              Divider(
                height: 30,
              ),
              Text('ArriveTime :$arrivalTime',
                  style: TextStyle(fontSize: 25, fontFamily: 'Marhey')),
              Divider(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
