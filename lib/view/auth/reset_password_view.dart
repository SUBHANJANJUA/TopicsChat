import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/auth/controller/forgotPasswordController.dart';
import 'package:topics/view/auth/password_changed_final.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';
import 'package:topics/widget/auth_Widgets/OTPHeading.dart';
import 'package:topics/widget/auth_Widgets/OTPSubHeading.dart';

class ResetPasswordView extends StatelessWidget {
  ResetPasswordView({super.key});
  final ResetPasswordController controller = Get.put(ResetPasswordController());
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
          child: Obx(
            () => SingleChildScrollView(
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
                              const OtpHeading(text: 'Reset password '),
                              verticalGap(30),
                              const OtpSubHeading(
                                  text: 'Choose your new password. '),
                              const OtpSubHeading(
                                  text: 'It must be at least 8 characters.'),
                            ],
                          ),
                        ),
                        verticalGap(35),
                        const GeneralText(
                          text: 'New password',
                        ),
                        verticalGap(2),
                        SizedBox(
                          height: controller.isValidPass.value ||
                                  controller.password.value.isEmpty
                              ? 37
                              : 60,
                          child: TextFormField(
                            controller: controller.controllerPass,
                            onChanged: controller.validatePass,
                            obscureText: controller.obscureText.value,
                            style: TopicTextStyle.textfield,
                            decoration: InputDecoration(
                              errorText: controller.isValidPass.value ||
                                      controller.password.value.isEmpty
                                  ? null
                                  : 'Password must contains 8 characters',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.togglePasswordVisibitity();
                                },
                                icon: Icon(
                                    controller.obscureText.value
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: TopicColor.lightGrey),
                              ),
                            ),
                          ),
                        ),
                        verticalGap(15),
                        const GeneralText(
                          text: 'Confirm password',
                        ),
                        verticalGap(2),
                        SizedBox(
                          height: controller.isValidpassConfirm.value ||
                                  controller.passConfirm.value.isEmpty
                              ? 37
                              : 60,
                          child: Obx(
                            () => TextFormField(
                              controller: controller.controllerpassConfirm,
                              onChanged: controller.validatepassConfirm,
                              obscureText: controller.obscureText2.value,
                              style: TopicTextStyle.textfield,
                              decoration: InputDecoration(
                                errorText:
                                    controller.isValidpassConfirm.value ||
                                            controller.passConfirm.value.isEmpty
                                        ? null
                                        : 'Please enter the same password',
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.togglePasswordVisibitity2();
                                  },
                                  icon: Icon(
                                      controller.obscureText2.value
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: TopicColor.lightGrey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        verticalGap(15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Obx(
              () => TopicLoaderButton(
                  radius: 10,
                  color: controller.isValidPass.value &&
                          controller.isValidpassConfirm.value
                      ? TopicColor.primary
                      : TopicColor.lightGrey,
                  btnText: 'Confirm',
                  onTap: () async {
                    controller.isValidPass.value &&
                            controller.isValidpassConfirm.value
                        ? Get.to(() => PasswordChangedFinalView())
                        : null;
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
