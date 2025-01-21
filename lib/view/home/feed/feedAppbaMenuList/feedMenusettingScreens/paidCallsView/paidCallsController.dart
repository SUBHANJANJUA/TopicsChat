import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Paidcallscontroller extends GetxController
    with GetTickerProviderStateMixin {
  RxBool errormsg = false.obs;
  void toggleerrormsg() {
    errormsg.value = true;
  }

  var duration = 15.0.obs; // Default value of Range Slider

//Validators
//Text controller validation
  var text = ''.obs;
  var isValidtext = false.obs;

  final textRegex = RegExp(r'^.{2,}$');

  //final TextEditingController contro = TextEditingController();
  void validatetext(String value) {
    text.value = value;

    if (value.isEmpty) {
      isValidtext.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !textRegex.hasMatch(word)) {
        isValidtext.value = false;
        return;
      }
    }

    isValidtext.value = true;
  }

  final customCallController = TextEditingController();
  final min15controller = TextEditingController();
  final min30controller = TextEditingController();
  final min60controller = TextEditingController();
  final min90controller = TextEditingController();
  final RxString price15 = 'Not defined'.obs;
  final RxString price30 = 'Not defined'.obs;
  final RxString price60 = 'Not defined'.obs;
  final RxString price90 = 'Not defined'.obs;
  late TabController tabController;
  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this);
    min15controller.addListener(() {
      price15.value =
          min15controller.text.isEmpty ? 'Not defined' : min15controller.text;
    });
    min30controller.addListener(() {
      price30.value =
          min30controller.text.isEmpty ? 'Not defined' : min30controller.text;
    });
    min60controller.addListener(() {
      price60.value =
          min60controller.text.isEmpty ? 'Not defined' : min60controller.text;
    });
    min90controller.addListener(() {
      price90.value =
          min90controller.text.isEmpty ? 'Not defined' : min90controller.text;
    });
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    min15controller.dispose();
    min30controller.dispose();
    min60controller.dispose();
    min90controller.dispose();
    super.onClose();
  }
}
