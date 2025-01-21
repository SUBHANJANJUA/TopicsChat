import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';

class GeneralTextwhite3 extends StatelessWidget {
  GeneralTextwhite3({
    super.key,
    required this.text,
    this.icon,
    this.actionIcon,
    this.color = Colors.white,
    this.gap = 15,
    this.weight = FontWeight.w500,
    this.align = MainAxisAlignment.start,
    this.size = 14,
    this.onTap,
  });
  final VoidCallback? onTap;
  final double? size;
  final FontWeight? weight;
  final String text;
  final Widget? icon;
  final Widget? actionIcon;
  final Color? color;
  final double? gap;
  final MainAxisAlignment? align;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: align!,
              children: [
                icon ?? SizedBox.shrink(),
                if (icon != null)
                  SizedBox(
                    width: gap,
                  ),
                Text(text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: weight,
                      fontSize: size,
                      color: color,
                    )),
              ],
            ),
            actionIcon == null ? SizedBox.shrink() : actionIcon!,
          ],
        ),
      ),
    );
  }
}

class GeneralTextwhite2 extends StatelessWidget {
  GeneralTextwhite2({
    super.key,
    required this.text,
    this.icon,
    this.color = Colors.white,
    this.gap = 15,
    this.weight = FontWeight.w500,
    this.align = MainAxisAlignment.start,
    this.size = 14,
    this.actionIcon = false,
    this.onTap,
  });
  final bool? actionIcon;
  final double? size;
  final FontWeight? weight;
  final String text;
  final Widget? icon;
  final Color? color;
  final double? gap;
  final MainAxisAlignment? align;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: align!,
              children: [
                icon ?? SizedBox.shrink(),
                if (icon != null)
                  SizedBox(
                    width: gap,
                  ),
                Text(text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: weight,
                      fontSize: size,
                      color: color,
                    )),
              ],
            ),
            actionIcon!
                ? Icon(
                    Icons.arrow_forward_ios,
                    color: TopicColor.white,
                    size: 15,
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class GeneralTextwhite extends StatelessWidget {
  GeneralTextwhite({
    super.key,
    required this.text,
    this.icon,
    this.color = Colors.white,
    this.gap = 5,
    this.weight = FontWeight.w500,
    this.align = MainAxisAlignment.start,
    this.size = 14,
  });
  final double? size;
  final FontWeight? weight;
  final String text;
  final Widget? icon;
  final Color? color;
  final double? gap;
  final MainAxisAlignment? align;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: align!,
      children: [
        icon ?? SizedBox.shrink(),
        if (icon != null)
          SizedBox(
            width: gap,
          ),
        Text(text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: weight,
              fontSize: size,
              color: color,
            )),
      ],
    );
  }
}
