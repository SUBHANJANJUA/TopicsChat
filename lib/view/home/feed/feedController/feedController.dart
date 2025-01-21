import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedController extends GetxController {
  var isSwitched1 = false.obs;
  RxString selectedOption = 'Off'.obs;
  void toggleSwitch(bool value) {
    isSwitched1.value = value;
  }

  var obscureText = true.obs;
  void togglePasswordVisibitity() {
    obscureText.value = !obscureText.value;
  }

  var obscureText2 = true.obs;
  void togglePasswordVisibitity2() {
    obscureText2.value = !obscureText2.value;
  }

  var obscureText3 = true.obs;
  void togglePasswordVisibitity3() {
    obscureText3.value = !obscureText3.value;
  }

//Current password
  var passwordCu = ''.obs;
  var isValidPassCu = false.obs;
  final PassRegexCu = RegExp(r'^[a-zA-Z0-9._%+-]{8,}$');

  final TextEditingController controllerPassCu = TextEditingController();
  void validatePassCu(String value) {
    passwordCu.value = value;

    if (value.isEmpty) {
      isValidPassCu.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !PassRegexCu.hasMatch(word)) {
        isValidPassCu.value = false;
        return;
      }
    }

    isValidPassCu.value = true;
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

  //Contact us View
  // subject validator
  var subject = ''.obs;
  var isValidsubject = false.obs;
  final subjectRegex = RegExp(r'^.{3,}$');

  final TextEditingController controllersubject = TextEditingController();
  void validatesubject(String value) {
    subject.value = value;

    if (value.isEmpty) {
      isValidsubject.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !subjectRegex.hasMatch(word)) {
        isValidsubject.value = false;
        return;
      }
    }

    isValidsubject.value = true;
  }

  // msg validator
  var message = ''.obs;
  var isValidmessage = false.obs;
  final messageRegex = RegExp(r'^.{3,}$');

  final TextEditingController controllermessage = TextEditingController();
  void validatemessage(String value) {
    message.value = value;

    if (value.isEmpty) {
      isValidmessage.value = false;
      return;
    }

    List<String> words = value.split(' ');
    for (String word in words) {
      if (word.isNotEmpty && !messageRegex.hasMatch(word)) {
        isValidmessage.value = false;
        return;
      }
    }

    isValidmessage.value = true;
  }

//FAQ questions controller

  RxBool faq1 = false.obs;

  void toggleFaq1() {
    faq1.value = !faq1.value;
  }

  RxBool faq2 = false.obs;

  void toggleFaq2() {
    faq2.value = !faq2.value;
  }

  RxBool faq3 = false.obs;

  void toggleFaq3() {
    faq3.value = !faq3.value;
  }

  RxBool faq4 = false.obs;

  void toggleFaq4() {
    faq4.value = !faq4.value;
  }

  RxBool faq5 = false.obs;

  void toggleFaq5() {
    faq5.value = !faq5.value;
  }

  RxBool faq6 = false.obs;

  void toggleFaq6() {
    faq6.value = !faq6.value;
  }

  RxBool faq7 = false.obs;

  void toggleFaq7() {
    faq7.value = !faq7.value;
  }

  RxBool faq8 = false.obs;

  void toggleFaq8() {
    faq8.value = !faq8.value;
  }

  RxBool faq9 = false.obs;

  void toggleFaq9() {
    faq9.value = !faq9.value;
  }

  RxBool faq10 = false.obs;

  void toggleFaq10() {
    faq10.value = !faq10.value;
  }

  RxBool faq11 = false.obs;

  void toggleFaq11() {
    faq11.value = !faq11.value;
  }

  RxBool faq12 = false.obs;

  void toggleFaq12() {
    faq12.value = !faq12.value;
  }
}
