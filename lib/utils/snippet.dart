import 'package:flutter/material.dart';

Widget getLoader() => const Center(child: CircularProgressIndicator());

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    super.key,
    this.child,
    this.onTap,
  });
  final VoidCallback? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 37,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(69, 69, 69, 1),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: child,
        ),
      ),
    );
  }
}
