import 'package:flutter/material.dart';

import '../../constant/color_contant.dart';
import '../snippet.dart';

class TopicLoaderButton extends StatefulWidget {
  final String btnText;
  final Color? textColor;
  final double? radius;
  final Color? borderSide;
  final Future<void> Function() onTap;
  final Color? color;
  final double? fontSize;
  final FontWeight? weight;
  final Widget? prefixWidget;

  const TopicLoaderButton({
    super.key,
    required this.btnText,
    required this.onTap,
    this.color,
    this.prefixWidget,
    this.textColor,
    this.fontSize,
    this.weight,
    this.radius,
    this.borderSide,
  });

  @override
  State<TopicLoaderButton> createState() => _TopicLoaderButtonState();
}

class _TopicLoaderButtonState extends State<TopicLoaderButton> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? getLoader()
        : SizedBox(
            height: 45,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.color ?? TopicColor.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.radius ?? 10),
                  side: BorderSide(
                      color: widget.borderSide ?? Colors.transparent),
                ),
                minimumSize: Size(MediaQuery.of(context).size.width, 40),
              ),
              onPressed: () async {
                if (mounted) {
                  setState(() => loading = true);
                }
                await widget.onTap();
                if (mounted) {
                  setState(() => loading = false);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.prefixWidget ?? SizedBox.shrink(),
                  Text(widget.btnText,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: widget.textColor ?? Colors.white,
                            fontSize: widget.fontSize ?? 15,
                            letterSpacing: 0.9,
                            fontWeight: widget.weight ?? FontWeight.w500,
                          )),
                ],
              ),
            ),
          );
  }
}
