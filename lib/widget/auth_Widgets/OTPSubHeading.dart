import 'package:flutter/material.dart';

class OtpSubHeading extends StatelessWidget {
  const OtpSubHeading({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
    );
  }
}
