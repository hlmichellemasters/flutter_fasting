import 'package:flutter/material.dart';

import './widgets/fast_list.dart';

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
  final idController = TextEditingController();
  final hoursController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Faster'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Fast Number'),
                    controller: idController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Hours'),
                    controller: hoursController,
                  ),
                  TextButton(
                    child: Text('Add Fast'),
                    onPressed: () => print(
                        'submitted: ${idController.text} and ${hoursController.text}'),
                  )
                ],
              ),
            ),
          ),
          FastList()
        ],
      ),
    );
  }
}
