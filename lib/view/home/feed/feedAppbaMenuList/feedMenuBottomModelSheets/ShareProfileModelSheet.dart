import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class ShareProfilteModalSheet extends StatelessWidget {
  const ShareProfilteModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: crossIcon(
                      size: 25,
                    )),
                verticalGap(25),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/gallery2.png',
                    width: 93,
                    height: 93,
                    fit: BoxFit.fill,
                  ),
                ),
                verticalGap(15),
                HeadingTextAppBar(text: 'Henry Lopez'),
                verticalGap(50),
                Image.asset(
                  'assets/images/qr_bg.png',
                  width: 180,
                  height: 180,
                )
              ],
            ),
            TopicLoaderButton(
              btnText: 'Share profile',
              onTap: () async {},
              color: TopicColor.primary,
            )
          ],
        ),
      ),
    );
  }
}
