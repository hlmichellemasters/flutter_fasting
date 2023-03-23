import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/fast.dart';

class FastList extends StatelessWidget {
  final List<Fast> fasts;

  FastList(this.fasts);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView.builder(
          itemBuilder: (buildContext, index) {
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
                  child: Text(fasts[index].hoursFasted.toString() + ' Hrs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Fast #: ${fasts[index].id}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    Text('Start: ' +
                        DateFormat('MMM dd hh:mm a')
                            .format(fasts[index].startDateTime)),
                    Text('End:   ' +
                        DateFormat('MMM dd hh:mm a')
                            .format(fasts[index].endDateTime)),
                    // style: TextStyle(
                    //     fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ));
          },
          itemCount: fasts.length,
          // ignore: todo
          // TODO: reverse the list/map so that newer fasts are on top
        ));
  }
}
