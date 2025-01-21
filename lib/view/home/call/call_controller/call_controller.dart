import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var isSwitched4 = false.obs;
  void toggleSwitch4(bool value) {
    isSwitched4.value = value;
  }

  var isSwitched5 = false.obs;
  void toggleSwitch5(bool value) {
    isSwitched5.value = value;
  }

  late TabController tabController;

  final RxBool enablebutton = false.obs;

  final RxInt screenCount = 0.obs;
  void screenIncease() {
    screenCount.value++;
  }

  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);

    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();

    super.onClose();
  }
}
