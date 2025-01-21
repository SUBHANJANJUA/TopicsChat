import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';

import 'package:topics/view/home/home_view.dart';
import 'package:topics/widget/auth_Widgets/OTPHeading.dart';
import 'package:topics/widget/auth_Widgets/OTPSubheading2.dart';

class WelcomView extends StatelessWidget {
  WelcomView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: TopicColor.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Column(
                  children: [
                    verticalGap(context.width * 0.2),
                    Image.asset(
                      'assets/images/logo.png',
                      width: 121,
                      height: 140,
                    ),
                    verticalGap(60),
                    const OtpHeading(text: 'Welcome!'),
                    verticalGap(30),
                    const OtpSubHeading2(
                        text: 'Start using Topics and be the first to'),
                    verticalGap(5),
                    const OtpSubHeading2(text: 'discover our new features!'),
                    verticalGap(20),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TopicLoaderButton(
                radius: 10,
                color: TopicColor.primary,
                btnText: 'Let’s go',
                onTap: () async {
                  Get.to(() => HomeView());
                }),
          ),
        ),
      ),
    );
  }
}
