import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      id: '1',
      startDateTime: now,
      endDateTime: later,
    ),
    Fast(id: '2', startDateTime: yesterday, endDateTime: yesterdayLater),
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
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            width: double.infinity,
            child: Card(
              color: Colors.purple,
              child: Text('CHART!', style: TextStyle(fontSize: 25)),
              elevation: 5,
            ),
          ),
          Column(
            children: fasts.map((fast) {
              return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(fast.hoursFasted.toString() + ' Hrs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Fast #: ${fast.id}',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      Text('Start: ' +
                          DateFormat('MMM dd hh:mm a')
                              .format(fast.startDateTime)),
                      Text('End:   ' +
                          DateFormat('MMM dd hh:mm a')
                              .format(fast.endDateTime)),
                      // style: TextStyle(
                      //     fontSize: 14, fontWeight: FontWeight.bold)),
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
