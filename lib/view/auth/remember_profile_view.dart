import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/auth/Welcome.dart';
import 'package:topics/view/auth/controller/signInController.dart';

import 'package:topics/view/auth/register_view.dart';
import 'package:topics/view/auth/sign_in.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

import '../../utils/widgets/standart_widget.dart';

// ignore: must_be_immutable
class RememberProfileView extends StatelessWidget {
  RememberProfileView({super.key});
  var obscureText = true.obs;
  void togglePasswordVisibitity() {
    obscureText.value = !obscureText.value;
  }

  final SignInController controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      verticalGap(context.width * 0.2),
                      Image.asset(
                        'assets/images/logo.png',
                        width: 121,
                        height: 140,
                      ),
                      verticalGap(50),
                      Container(
                        // height: 275,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: TopicColor.bgGrey,
                          //color: Colors.red,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Column(
                                  children: [
                                    verticalGap(15),
                                    Container(
                                      height: 75,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: TopicColor.textField,
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                      child: Icon(
                                        Icons.person,
                                        color: TopicColor.lightGrey,
                                        size: 60,
                                      ),
                                    ),
                                    verticalGap(11),
                                    const RememberHeading(text: 'Henry Lopez'),
                                    verticalGap(2),
                                    const RememberSubHeading(
                                        text: '@lopezlopez'),
                                    verticalGap(25),
                                  ],
                                ),
                              ),
                              const GeneralText(
                                textalign: TextAlign.left,
                                text: 'Password',
                              ),
                              verticalGap(2),
                              Obx(
                                () => SizedBox(
                                  height: controller.isValidPass2.value ||
                                          controller.password2.value.isEmpty
                                      ? 37
                                      : 60,
                                  child: TextFormField(
                                    controller: controller.controllerPass2,
                                    onChanged: controller.validatePass2,
                                    obscureText: controller.obscureText.value,
                                    style: TopicTextStyle.textfield,
                                    decoration: InputDecoration(
                                      errorText: controller
                                                  .isValidPass2.value ||
                                              controller.password2.value.isEmpty
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
                              ),

                              // TopicTextField(
                              //   controller: passwordController5,
                              //   maxLine: 1,
                              //   isVisible: true,
                              //   suffixIcon: Icons.visibility_off,
                              //   suffixIcon2: Icons.visibility,
                              // ),
                            ],
                          ),
                        ),
                      ),
                      verticalGap(11),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignInView());
                        },
                        child: PrimaryRegular12(
                          text: 'Log in with another account',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const PrimaryRegular12(
                    text: 'Dont have an account yet?',
                    color: Colors.white,
                  ),
                  horizontalGap(5),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => RegisterView());
                    },
                    child: const PrimaryRegular12(
                      text: 'Register here',
                    ),
                  ),
                ],
              ),
              verticalGap(10),
              Obx(
                () => TopicLoaderButton(
                  btnText: 'Log in',
                  radius: 10,
                  color: controller.isValidPass2.value
                      ? TopicColor.primary
                      : TopicColor.lightGrey,
                  onTap: () async {
                    controller.isValidPass2.value
                        ? Get.to(() => WelcomView())
                        : null;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
