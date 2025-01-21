import 'package:flutter/material.dart';

class OtpSubHeading2 extends StatelessWidget {
  const OtpSubHeading2({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
    );
  }
}
