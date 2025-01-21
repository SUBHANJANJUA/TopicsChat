import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/auth/controller/signupController.dart';
import 'package:topics/view/auth/remember_profile_view.dart';
import 'package:topics/widget/auth_Widgets/OTPHeading.dart';
import 'package:topics/widget/auth_Widgets/OTPSubHeading.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({
    super.key,
    this.buttonText,
  });
  final String? buttonText;
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final SignUpController controller = Get.put(SignUpController());

  final defaultPinTheme = PinTheme(
    width: 60,
    height: 78,
    textStyle: const TextStyle(
        fontSize: 25, color: Colors.white, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: TopicColor.textField, width: 1.5),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  final disablePinTheme = PinTheme(
    width: 60,
    height: 78,
    textStyle: TextStyle(
        fontSize: 25, color: TopicColor.textField, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
  );

  final errorPinTheme = PinTheme(
    width: 60,
    height: 78,
    textStyle: const TextStyle(
        fontSize: 25, color: Colors.red, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.red, width: 1),
      borderRadius: BorderRadius.circular(10),
    ),
  );

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
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 121,
                      height: 140,
                    ),
                    verticalGap(35),
                    const OtpHeading(text: 'We sent a verification'),
                    const OtpHeading(text: 'code to your email'),
                    verticalGap(30),
                    const OtpSubHeading(text: 'Please paste it here.'),
                    verticalGap(20),
                    Pinput(
                      defaultPinTheme: disablePinTheme,
                      submittedPinTheme: defaultPinTheme,
                      errorPinTheme: errorPinTheme,
                      focusedPinTheme: defaultPinTheme,
                      length: 5,
                      onChanged: (pin) {
                        if (pin.length == 5) {
                          controller.showPin.value = true;
                        } else {
                          controller.showPin.value = false;
                        }
                      },
                      onCompleted: (pin) {
                        controller.showPin.value = true;
                      },
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
            child: Column(
              children: [
                TopicLoaderButton(
                  btnText: 'Send again',
                  onTap: () async {},
                  radius: 10,
                  color: TopicColor.black,
                  borderSide: TopicColor.lightGrey,
                ),
                verticalGap(20),
                Obx(
                  () => TopicLoaderButton(
                      radius: 10,
                      color: controller.showPin.value
                          ? TopicColor.primary
                          : TopicColor.lightGrey,
                      btnText: 'Confirm',
                      onTap: () async {
                        controller.showPin.value
                            ? Get.to(() => RememberProfileView())
                            : null;
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
