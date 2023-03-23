import 'package:flutter/material.dart';

import 'widgets/user_fasts.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Faster Faster'),
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
              UserFasts()
            ])));
  }
}
