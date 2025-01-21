import 'package:get/get.dart';

class FeedSwitchButtonControoler extends GetxController {
  //Notifications Setting
  // Mute all
  var isSwitched1 = false.obs;
  RxString selectedOption = 'Off'.obs;
  void toggleSwitch(bool value) {
    isSwitched1.value = value;
  }

  // Quiet mode
  var isSwitched2 = false.obs;
  RxString selectedOption2 = 'Off'.obs;
  void toggleSwitch2(bool value) {
    isSwitched2.value = value;
  }

//Chat & Calls View
//Message requests
  var isSwitched3 = false.obs;
  RxString selectedOption3 = 'Off'.obs;
  void toggleSwitch3(bool value) {
    isSwitched3.value = value;
  }

  //Group requests
  var isSwitched4 = false.obs;
  RxString selectedOption4 = 'Off'.obs;
  void toggleSwitch4(bool value) {
    isSwitched4.value = value;
  }

  //Direct messages
  var isSwitched5 = false.obs;
  RxString selectedOption5 = 'Off'.obs;
  void toggleSwitch5(bool value) {
    isSwitched5.value = value;
  }

  //Group messages
  var isSwitched6 = false.obs;
  RxString selectedOption6 = 'Off'.obs;
  void toggleSwitch6(bool value) {
    isSwitched6.value = value;
  }

  //Private mode
  var isSwitched7 = false.obs;
  RxString selectedOption7 = 'Off'.obs;
  void toggleSwitch7(bool value) {
    isSwitched7.value = value;
  }

  //Group voice call
  var isSwitched8 = false.obs;
  RxString selectedOption8 = 'Off'.obs;
  void toggleSwitch8(bool value) {
    isSwitched8.value = value;
  }

  //Group video call
  var isSwitched9 = false.obs;
  RxString selectedOption9 = 'Off'.obs;
  void toggleSwitch9(bool value) {
    isSwitched9.value = value;
  }

//ActivityView Screen Switches
//Trending channels
  var isSwitched10 = false.obs;
  RxString selectedOption10 = 'Off'.obs;
  void toggleSwitch10(bool value) {
    isSwitched10.value = value;
  }

//Trending threads
  var isSwitched11 = false.obs;
  RxString selectedOption11 = 'Off'.obs;
  void toggleSwitch11(bool value) {
    isSwitched11.value = value;
  }

//Suggested threads
  var isSwitched12 = false.obs;
  RxString selectedOption12 = 'Off'.obs;
  void toggleSwitch12(bool value) {
    isSwitched12.value = value;
  }

//Suggested topics
  var isSwitched13 = false.obs;
  RxString selectedOption13 = 'Off'.obs;
  void toggleSwitch13(bool value) {
    isSwitched13.value = value;
  }

//People you might know
  var isSwitched14 = false.obs;
  RxString selectedOption14 = 'Off'.obs;
  void toggleSwitch14(bool value) {
    isSwitched14.value = value;
  }

//
//
//
//From HODL View Switch Butoons controller
//
//Announcements
  var isSwitched15 = false.obs;
  RxString selectedOption15 = 'Off'.obs;
  void toggleSwitch15(bool value) {
    isSwitched15.value = value;
  }

//Feedback
  var isSwitched16 = false.obs;
  RxString selectedOption16 = 'Off'.obs;
  void toggleSwitch16(bool value) {
    isSwitched16.value = value;
  }

//Email notifications
  var isSwitched17 = false.obs;
  RxString selectedOption17 = 'Off'.obs;
  void toggleSwitch17(bool value) {
    isSwitched17.value = value;
  }

//Support Requests
  var isSwitched18 = false.obs;
  RxString selectedOption18 = 'Off'.obs;
  void toggleSwitch18(bool value) {
    isSwitched18.value = value;
  }

//
//From HODL View Switch Butoons controller
//
//Announcements
  var isSwitched19 = false.obs;
  RxString selectedOption19 = 'Off'.obs;
  void toggleSwitch19(bool value) {
    isSwitched19.value = value;
  }

//Feedback
  var isSwitched20 = false.obs;
  RxString selectedOption20 = 'Off'.obs;
  void toggleSwitch20(bool value) {
    isSwitched20.value = value;
  }
}
