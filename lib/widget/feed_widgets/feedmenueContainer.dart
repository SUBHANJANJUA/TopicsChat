import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';

class FeedMenuContainer extends StatelessWidget {
  const FeedMenuContainer({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 106,
      height: 100,
      decoration: BoxDecoration(
          color: TopicColor.lightGrey2,
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [TopicColor.primaryGrey, TopicColor.lightGrey],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            verticalGap(10),
            Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: TopicColor.white),
            )
          ],
        ),
      ),
    );
  }
}
