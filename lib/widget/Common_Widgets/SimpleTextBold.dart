import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';

class SimpleWhitetextBold extends StatelessWidget {
  const SimpleWhitetextBold({
    super.key,
    required this.text,
    this.size = 14,
    this.weight = FontWeight.w600,
  });
  final String text;
  final double size;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: weight, fontSize: size, color: TopicColor.white),
    );
  }
}

class SimpleWhitetextBold2 extends StatelessWidget {
  const SimpleWhitetextBold2({
    super.key,
    required this.text,
    this.size = 14,
    this.weight = FontWeight.w600,
  });
  final String text;
  final double size;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: weight, fontSize: size, color: TopicColor.white),
      ),
    );
  }
}

class SimplePrimarytextBold extends StatelessWidget {
  const SimplePrimarytextBold({
    super.key,
    required this.text,
    this.size = 14,
    this.weight = FontWeight.w600,
    this.color = TopicColor.primary,
  });
  final Color? color;
  final String text;
  final double size;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}

class SimpleGreytextBold extends StatelessWidget {
  const SimpleGreytextBold({
    super.key,
    required this.text,
    this.size = 14,
    this.weight = FontWeight.w600,
    this.color = TopicColor.lightGrey,
  });
  final Color? color;
  final String text;
  final double size;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}

class SimpleGreytextBold2 extends StatelessWidget {
  const SimpleGreytextBold2({
    super.key,
    required this.text,
    this.size = 14,
    this.weight = FontWeight.w600,
  });
  final String text;
  final double size;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: weight, fontSize: size, color: TopicColor.lightGrey),
      ),
    );
  }
}
