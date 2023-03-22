import 'package:flutter/material.dart';

class NewFast extends StatelessWidget {
  final idController = TextEditingController();
  final hoursController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
