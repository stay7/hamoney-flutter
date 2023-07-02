import 'package:flutter/material.dart';

class LabelTitle extends StatelessWidget {
  final String title;

  const LabelTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13,
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
