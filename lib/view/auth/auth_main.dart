import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/auth/register_view.dart';
import 'package:topics/view/auth/sign_in.dart';

import '../../constant/color_contant.dart';
import '../../utils/widgets/standart_widget.dart';

class AuthMainScreen extends StatelessWidget {
  const AuthMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 163,
              height: 200,
            ),
            verticalGap(176),
            SizedBox(
              height: 50,
              child: TopicLoaderButton(
                color: TopicColor.primary,
                btnText: 'Create account',
                onTap: () async {
                  Get.to(() => const RegisterView());
                },
              ),
            ),
            verticalGap(14),
            const Text(
              'OR',
              style: TextStyle(
                  fontSize: 16,
                  color: TopicColor.lightGrey,
                  fontWeight: FontWeight.w700),
            ),
            verticalGap(14),
            SizedBox(
              height: 50,
              child: TopicLoaderButton(
                color: TopicColor.primary,
                btnText: 'Sign in',
                onTap: () async {
                  Get.to(() => const SignInView());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
