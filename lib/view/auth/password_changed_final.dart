import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';

import 'package:topics/view/auth/sign_in.dart';
import 'package:topics/widget/auth_Widgets/OTPHeading.dart';
import 'package:topics/widget/auth_Widgets/OTPSubHeading.dart';

class PasswordChangedFinalView extends StatelessWidget {
  PasswordChangedFinalView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Center(
            child: Column(
              children: [
                verticalGap(context.width * 0.2),
                Image.asset(
                  'assets/images/logo.png',
                  width: 121,
                  height: 140,
                ),
                verticalGap(80),
                const OtpHeading(text: 'Password changed'),
                verticalGap(30),
                const OtpSubHeading(
                    text: 'Your password has been successfully '),
                const OtpSubHeading(text: 'updated! Keep it safe and secure.'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TopicLoaderButton(
                radius: 10,
                color: TopicColor.primary,
                btnText: 'Back to login',
                onTap: () async {
                  Get.to(() => SignInView());
                }),
          ),
        ),
      ),
    );
  }
}
