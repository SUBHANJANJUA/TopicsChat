import 'package:flutter/material.dart';

class HeadingTextAppBar extends StatelessWidget {
  const HeadingTextAppBar({super.key, required this.text, this.size = 24});
  final String text;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size!, fontWeight: FontWeight.w600, color: Colors.white),
    );
  }
}
