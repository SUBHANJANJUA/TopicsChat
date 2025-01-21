import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/view/auth/auth_main.dart';

import 'constant/color_contant.dart';

class SaplashScreen extends StatefulWidget {
  const SaplashScreen({super.key});

  @override
  State<SaplashScreen> createState() => _SaplashScreenState();
}

class _SaplashScreenState extends State<SaplashScreen> {
  void initState() {
    super.initState();
    // Start the timer here
    Timer(const Duration(seconds: 3), () {
      Get.to(() => AuthMainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 163,
          height: 200,
        ),
      ),
    );
  }
}
