import 'package:flutter/material.dart';

import './fast_list.dart';
import './new_fast.dart';
import '../models/fast.dart';

class UserFasts extends StatefulWidget {
  @override
  State<UserFasts> createState() => _UserFastsState();
}

class _UserFastsState extends State<UserFasts> {
  static var now = new DateTime.now();
  static var yesterday = now.subtract(const Duration(days: 1));
  static var yesterdayLater = yesterday.add(const Duration(hours: 12));
  static var later = now.add(const Duration(hours: 18));
  final List<Fast> _userFasts = [
    Fast(
      startDateTime: now,
      endDateTime: later,
    ),
    Fast(startDateTime: yesterday, endDateTime: yesterdayLater),
    Fast(startDateTime: yesterday, endDateTime: yesterdayLater),
    Fast(startDateTime: yesterday, endDateTime: yesterdayLater),
    Fast(startDateTime: yesterday, endDateTime: yesterdayLater),
    Fast(startDateTime: yesterday, endDateTime: yesterdayLater),
  ];

  void _addNewFast(String id, double hours) {
    final newFast = new Fast(startDateTime: now, endDateTime: later);
    setState(() {
      _userFasts.add(newFast);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[NewFast(_addNewFast), FastList(_userFasts)]);
  }
}
