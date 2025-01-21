import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';

class FeedMenuSettingProfilteContainer extends StatelessWidget {
  const FeedMenuSettingProfilteContainer(
      {super.key,
      required this.text,
      this.dp = 'assets/images/dp_default.png'});
  final String text;
  final String? dp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: TopicColor.bgchatGrey),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: dp == ''
                        ? Image.asset(
                            'assets/images/dp_default.png',
                            width: 35,
                            height: 35,
                            fit: BoxFit.fill,
                          )
                        : Image.asset(
                            dp!,
                            width: 35,
                            height: 35,
                            fit: BoxFit.fill,
                          ),
                  ),
                  horizontalGap(10),
                  SimpleWhitetextBold(
                    text: text,
                    size: 14,
                  )
                ],
              ),
              Image.asset(
                "assets/images/qr_white.png",
                width: 20,
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
