import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/fast.dart';

class FastList extends StatelessWidget {
  final List<Fast> fasts;

  FastList(this.fasts);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: this.fasts.map((fast) {
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
                    DateFormat('MMM dd hh:mm a').format(fast.startDateTime)),
                Text('End:   ' +
                    DateFormat('MMM dd hh:mm a').format(fast.endDateTime)),
                // style: TextStyle(
                //     fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
      }).toList(),
    );
  }
}
