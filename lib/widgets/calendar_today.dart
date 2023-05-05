import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarToday extends StatelessWidget {
  const CalendarToday({Key? key, required this.date}) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Text(
        DateFormat('d').format(date),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
