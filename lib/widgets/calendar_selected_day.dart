import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarSelectedDay extends StatelessWidget {
  const CalendarSelectedDay({Key? key, required this.date}) : super(key: key);

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color(0x0F000000),
        shape: BoxShape.rectangle,
      ),
      child: Text(
        DateFormat('d').format(date),
        style: const TextStyle(color: Color(0xFF6A6A6A)),
      ),
    );
  }
}
