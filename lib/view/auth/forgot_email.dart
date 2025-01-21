import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/auth/controller/forgotPasswordController.dart';
import 'package:topics/view/auth/forgot_OTP.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

import 'package:topics/widget/auth_Widgets/OTPHeading.dart';
import 'package:topics/widget/auth_Widgets/OTPSubHeading.dart';

class ForgotEmailView extends StatelessWidget {
  ForgotEmailView({super.key});
  final Forgotpasswordcontroller controller =
      Get.put(Forgotpasswordcontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          surfaceTintColor: Colors.black,
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              )),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 121,
                            height: 140,
                          ),
                          verticalGap(35),
                          const OtpHeading(text: 'Forgot password? '),
                          verticalGap(30),
                          const OtpSubHeading(
                              text: 'Write your email and we’ll send you'),
                          const OtpSubHeading(
                              text: 'a link to reset your password'),
                        ],
                      ),
                    ),
                    verticalGap(35),
                    const GeneralText(
                      text: 'Email',
                    ),
                    verticalGap(2),
                    Obx(
                      () => TextFormField(
                        controller: controller.controllerEmail,
                        onChanged: controller.validateEmail,
                        style: TopicTextStyle.textfield,
                        decoration: InputDecoration(
                          errorText: controller.isValidEmail.value ||
                                  controller.email.value.isEmpty
                              ? null
                              : 'Enter a valid email',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Obx(
              () => TopicLoaderButton(
                  radius: 10,
                  color: controller.isValidEmail.value
                      ? TopicColor.primary
                      : TopicColor.lightGrey,
                  btnText: 'Send',
                  onTap: () async {
                    controller.isValidEmail.value
                        ? Get.to(() => ForgotOtpView())
                        : null;
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
