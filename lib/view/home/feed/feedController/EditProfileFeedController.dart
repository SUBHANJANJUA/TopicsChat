import 'dart:developer';

import 'package:get/get.dart';

class EditProfilteFeedController extends GetxController {
  RxString gender = ''.obs;
  void selectGender(String gender2) {
    gender.value = gender2;
    log(gender.toString());
  }

  RxString username = ''.obs;
  void selectusername(String gender2) {
    username.value = gender2;
  }
}
