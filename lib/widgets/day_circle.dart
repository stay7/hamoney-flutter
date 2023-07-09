import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayCircle extends StatelessWidget {
  final DateTime date;
  final DayCircleType type;

  DayCircle({Key? key, required this.date, this.type = DayCircleType.EMPTY}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = textStyleByType(type);
    ShapeDecoration decoration = decorationByType(type);

    return Container(
      width: 38,
      height: 38,
      alignment: Alignment.center,
      decoration: decoration,
      child: Opacity(
        opacity: type == DayCircleType.EMPTY ? 0.3 : 1,
        child: Text(
          DateFormat('d').format(date),
          style: textStyle,
        ),
      ),
    );
  }

  TextStyle textStyleByType(DayCircleType type) {
    switch (this.type) {
      case DayCircleType.SELECTED:
        return const TextStyle(
          color: Colors.white,
          fontSize: 19,
          fontWeight: FontWeight.w700,
        );
      case DayCircleType.TODAY:
        return const TextStyle(
          color: Color(0x99191919),
          fontSize: 19,
          fontWeight: FontWeight.w700,
        );
      case DayCircleType.RECORDED:
        return const TextStyle(
          color: Color(0xB3646464),
          fontSize: 19,
          fontWeight: FontWeight.w700,
        );
      case DayCircleType.EMPTY:
        return const TextStyle(
          color: Color(0x4D727272),
          fontSize: 19,
          fontWeight: FontWeight.w700,
        );
    }
  }

  ShapeDecoration decorationByType(DayCircleType type) {
    switch (this.type) {
      case DayCircleType.SELECTED:
        return ShapeDecoration(
          color: Color(0xFFEF662B),
          shape: OvalBorder(),
        );
      case DayCircleType.TODAY:
        return ShapeDecoration(
          color: Color(0x19191919),
          shape: OvalBorder(side: BorderSide(width: 0.75)),
        );
      default:
        return ShapeDecoration(
          color: Color(0xFFEEF1F3),
          shape: OvalBorder(),
        );
    }
  }
}

enum DayCircleType { SELECTED, TODAY, RECORDED, EMPTY }
