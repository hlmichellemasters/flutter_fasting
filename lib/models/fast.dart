final MINUTES_IN_AN_HOUR = 60;

class Fast {
  final String id;
  final DateTime startDateTime;
  final DateTime endDateTime;

  Fast(
      {required this.id,
      required this.startDateTime,
      required this.endDateTime});

  double get hoursFasted =>
      (this.endDateTime.difference(this.startDateTime).inMinutes) /
      MINUTES_IN_AN_HOUR;
}
