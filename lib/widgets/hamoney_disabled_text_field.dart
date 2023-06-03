import 'package:flutter/material.dart';

class HamoneyDisabledTextField extends StatelessWidget {
  const HamoneyDisabledTextField({
    Key? key,
    required this.title,
    required this.content,
    this.height = 50,
    this.color,
    this.titleStyle,
    this.contentStyle,
  }) : super(key: key);

  final String title;
  final String content;
  final double height;
  final Color? color;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(color: color ?? const Color(0xFFEFF1F5), borderRadius: BorderRadius.circular(14)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title, style: titleStyle), Text(content, style: contentStyle)],
      ),
    );
  }
}
