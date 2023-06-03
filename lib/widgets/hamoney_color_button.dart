import 'package:flutter/material.dart';

typedef VoidCallback = void Function();

class HamoneyColorButton extends StatelessWidget {
  const HamoneyColorButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.height = 50,
    this.width = double.infinity,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final double height;
  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
