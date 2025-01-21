import 'package:flutter/material.dart';

import '../../constant/color_contant.dart';

horizontalGap(double size) {
  return SizedBox(
    width: size,
  );
}

verticalGap(double size) {
  return SizedBox(
    height: size,
  );
}

horizontalDivider() {
  return SizedBox(
    height: 2,
    child: Divider(
      color: TopicColor.lightGrey,
    ),
  );
}

verticalDivider() {
  return Container(
    width: 2,
    color: TopicColor.lightGrey,
  );
}
