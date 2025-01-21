import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var obscureText = true.obs;
  void togglePasswordVisibitity() {
    obscureText.value = !obscureText.value;
  }

  var resetPassword1 = true.obs;
  void toggleResetPassword1() {
    resetPassword1.value = !resetPassword1.value;
  }

  var resetPassword2 = true.obs;
  void toggleResetPassword2() {
    resetPassword2.value = !resetPassword2.value;
  }

//Validators
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

  //Valid password in remember_profile Screen
  var password2 = ''.obs;
  var isValidPass2 = false.obs;
  final PassRegex2 = RegExp(r'^[a-zA-Z0-9._%+-]{8,}$');

  final TextEditingController controllerPass2 = TextEditingController();
  void validatePass2(String value) {
    password2.value = value;

    if (value.isEmpty) {
      isValidPass2.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !PassRegex.hasMatch(word)) {
        isValidPass2.value = false;
        return;
      }
    }

    isValidPass2.value = true;
  }
}
