import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/home/home_view.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';
import 'package:topics/widget/auth_Widgets/OTPHeading.dart';

class PrivacyLockView extends StatelessWidget {
  const PrivacyLockView({
    super.key,
    this.widget,
  });
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/appbarBGpic2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: GestureDetector(
          //  onTap: () => Get.to(() => Chatprofileview()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  appBarTitle(
                    text: 'Friendzz',
                  ),
                ],
              ),
              verticalGap(5),
              Row(
                children: [
                  const appBarTitle2(
                    text: '@carlosgomesssss',
                  ),
                  horizontalGap(10),
                  const appBarTitle2(
                    text: '.',
                  ),
                  horizontalGap(10),
                  const appBarTitle2(
                    text: '@j-travis',
                  ),
                ],
              ),
            ],
          ),
        ),
        titleSpacing: 0.0,
        leading: const backIconButtonLeading(),
        actions: [const appBarActionIcon()],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget ?? const SizedBox.shrink(),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/lock.png',
                  width: 56,
                  height: 70,
                ),
                verticalGap(35),
                const OtpHeading(text: 'This tab is locked!'),
                verticalGap(35),
                const LockSubheading(
                  text: 'For €5.99 per month you can',
                ),
                const LockSubheading(
                  text: 'subscribe and access all private ',
                ),
                const LockSubheading(
                  text: 'information shared here.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TopicLoaderButton(
                color: TopicColor.primary,
                btnText: 'Subscribe',
                onTap: () async {
                  Get.offAll(() => const HomeView());
                }),
          ),
        ],
      ),
    );
  }
}
