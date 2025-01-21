import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class PaidCallsContainer extends StatelessWidget {
  const PaidCallsContainer({
    super.key,
    required this.duration,
    required this.price,
  });
  final String duration;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: TopicColor.bgchatGrey,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SimpleWhitetextBold(text: duration),
            price == "Not defined"
                ? GeneralTextGrey(text: price)
                : GeneralTextPrimary(text: "€ $price"),
          ],
        ),
      ),
    );
  }
}
