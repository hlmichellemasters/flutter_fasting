import 'package:flutter/material.dart';

class NewFast extends StatelessWidget {
  final Function addFast;
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  NewFast(this.addFast);

  void submitData() {
    final enteredStartDate = startDateController.text;
    final enteredEndDate = endDateController.text;

    // TODO: change to defaulting to now if empty date
    if (enteredStartDate.isEmpty || enteredEndDate.isEmpty) {
      return;
    }
    // TODO: pass in the dates instead
    addFast(enteredStartDate, enteredEndDate);
    print('submitted: ${enteredStartDate} and ${enteredEndDate}');
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
              controller: startDateController,
              keyboardType: TextInputType.datetime,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'End (Optional)'),
              controller: endDateController,
              keyboardType: TextInputType.datetime,
              onSubmitted: (_) => submitData,
            ),
            TextButton(
              // TODO: change to 'start' fast if no end datetime is selected
              child: Text('Add Fast'),
              onPressed: submitData,
            )
          ],
        ),
      ),
    );
  }
}
