import 'package:flutter/material.dart';

class NewFast extends StatelessWidget {
  final Function addFast;
  final dateController = TextEditingController();
  final hoursController = TextEditingController();

  NewFast(this.addFast);

  void submitData() {
    final enteredDate = dateController.text;
    final enteredHours = double.parse(hoursController.text);

    // TODO: change to defaulting to now if empty date
    if (enteredDate.isEmpty || enteredHours < 0) {
      return;
    }
    // ignore: todo
    // TODO: pass in the dates instead
    addFast(enteredDate, enteredHours);
    print('submitted: ${enteredDate} and ${enteredHours}');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Start'),
              controller: dateController,
              keyboardType: TextInputType.datetime,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Hours'),
              controller: hoursController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData,
            ),
            TextButton(
              child: Text('Add Fast'),
              onPressed: submitData,
            )
          ],
        ),
      ),
    );
  }
}
