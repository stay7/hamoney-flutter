import 'package:flutter/material.dart';

class HamoneyTextButton extends StatelessWidget {
  const HamoneyTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.height = 50,
    this.fontSize = 14,
    this.color = 0xff191919,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final double height;
  final double fontSize;
  final String text;
  final int color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: Color(color)),
        ),
      ),
    );
  }
}
