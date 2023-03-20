import 'package:flutter/material.dart';

import './fast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static var now = new DateTime.now();
  static var yesterday = now.subtract(const Duration(days: 1));
  static var yesterdayLater = yesterday.add(const Duration(hours: 12));
  static var later = now.add(const Duration(hours: 18));
  // final formatter = new DateFormat('MM/dd/yyyy hh:mm');
  final List<Fast> fasts = [
    Fast(
      id: '0',
      startDateTime: now,
      endDateTime: later,
    ),
    Fast(id: '1', startDateTime: yesterday, endDateTime: yesterdayLater),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Faster'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.purple,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Column(
            children: fasts.map((fast) {
              return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    child: Text(fast.hoursFasted.toString()),
                  ),
                  Column(
                    children: <Widget>[
                      Text(fast.id),
                      Text('From: ' +
                          fast.startDateTime.toString() +
                          ' to ' +
                          fast.endDateTime.toString()),
                    ],
                  ),
                ],
              ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
