import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forgotpasswordcontroller extends GetxController {
  //Email validation
  var email = ''.obs;
  var isValidEmail = false.obs;
  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  final TextEditingController controllerEmail = TextEditingController();
  void validateEmail(String value) {
    email.value = value;

    if (value.isEmpty) {
      isValidEmail.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !emailRegex.hasMatch(word)) {
        isValidEmail.value = false;
        return;
      }
    }

    isValidEmail.value = true;
  }

  var showPin = false.obs;
}

class ResetPasswordController extends GetxController {
  var obscureText = true.obs;
  void togglePasswordVisibitity() {
    obscureText.value = !obscureText.value;
  }

  var obscureText2 = true.obs;
  void togglePasswordVisibitity2() {
    obscureText2.value = !obscureText2.value;
  }

  //Valid password
  var password = ''.obs;
  var isValidPass = false.obs;
  final PassRegex = RegExp(r'^[a-zA-Z0-9._%+-]{8,}$');

  final TextEditingController controllerPass = TextEditingController();
  void validatePass(String value) {
    password.value = value;

    if (value.isEmpty) {
      isValidPass.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !PassRegex.hasMatch(word)) {
        isValidPass.value = false;
        return;
      }
    }

    isValidPass.value = true;
  }

  //Confirm password
  var passConfirm = ''.obs;
  var isValidpassConfirm = false.obs;
  // final passConfirmRegex = RegExp(r'^[a-zA-Z0-9._%+-]{8,}$');

  final TextEditingController controllerpassConfirm = TextEditingController();
  void validatepassConfirm(String value) {
    passConfirm.value = value;

    if (value.isEmpty) {
      isValidpassConfirm.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty &&
          controllerpassConfirm.value != controllerPass.value) {
        isValidpassConfirm.value = false;
        return;
      }
    }

    isValidpassConfirm.value = true;
  }
}
