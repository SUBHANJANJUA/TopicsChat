import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ChatController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;
  late TabController tabController2;

  var pinChat = (-1).obs;

  void togglePinChat(int index) {
    if (pinChat.value == index) {
      pinChat.value = -1;
    } else {
      pinChat.value = index;
    }
  }

  RxBool isReply = false.obs;
  String text2 = '';
  String img2 = '';
  String payment2 = '';
  void toggleIsReply(bool value, String? text, String? img, String? payment) {
    isReply.value = value;
    text2 = text.toString();
    img2 = img.toString();
    payment2 = payment.toString();
  }

  RxBool customTab = false.obs;
  void toggleCutomTab(bool value) {
    customTab.value = value;
  }

  RxBool groupSearch = true.obs;
  void toggleGroupSearch(bool value) {
    groupSearch.value = value;
  }

  RxBool channelRequest = false.obs;
  void toggleChannelRequest() {
    channelRequest.value = !channelRequest.value;
  }

  var pollRadio = 1.obs;
  void updatePoll(int value) {
    pollRadio.value = value;
  }

  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this);
    tabController2 = TabController(length: 3, vsync: this);

    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    tabController2.dispose();

    super.onClose();
  }

  //switch buttons
  var isSwitched1 = false.obs;
  RxString selectedOption = 'Off'.obs;
  void toggleSwitch(bool value) {
    isSwitched1.value = value;
  }

  var isSwitched2 = false.obs;
  void toggleSwitch2(bool value) {
    isSwitched2.value = value;
  }

  var isSwitched3 = false.obs;
  void toggleSwitch3(bool value) {
    isSwitched3.value = value;
  }

  var isSwitched4 = false.obs;
  void toggleSwitch4(bool value) {
    isSwitched4.value = value;
  }

  var isSwitched5 = false.obs;
  void toggleSwitch5(bool value) {
    isSwitched5.value = value;
  }

  var isSwitched6 = false.obs;
  void toggleSwitch6(bool value) {
    isSwitched6.value = value;
  }

  var isSwitched7 = false.obs;
  void toggleSwitch7(bool value) {
    isSwitched7.value = value;
  }

  var isSwitched8 = false.obs;
  void toggleSwitch8(bool value) {
    isSwitched8.value = value;
  }

  var isSwitched9 = false.obs;
  void toggleSwitch9(bool value) {
    isSwitched9.value = value;
  }

  var radioButton = (-1).obs;
  void changeRadio(int index) {
    if (radioButton.value == index) {
      radioButton.value = -1;
    } else {
      radioButton.value = index;
    }
  }

  var isCheckedList = <bool>[].obs;

  // Initialize the list with a given size (matching `contactList`)
  void initializeCheckboxList(int count) {
    isCheckedList.value = List<bool>.filled(count, false);
  }

  // Toggle the checkbox state for a specific index
  void toggleChecked(int index) {
    if (index >= 0 && index < isCheckedList.length) {
      isCheckedList[index] = !isCheckedList[index];
    }
  }

  var ReplyselectedIndex = (-1).obs;

  void replyToggleAnswerVisibility(int index) {
    if (ReplyselectedIndex.value == index) {
      ReplyselectedIndex.value = -1;
    } else {
      ReplyselectedIndex.value = index;
    }
  }

  var channelselectedIndex = (-1).obs;

  void channelToggleAnswerVisibility(int index) {
    if (channelselectedIndex.value == index) {
      channelselectedIndex.value = -1;
    } else {
      channelselectedIndex.value = index;
    }
  }

//select images from gallery and other
  RxList<File> selectedImages = RxList<File>(); // List to store selected images

  Future<void> pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);
    if (image != null) {
      selectedImages
          .add(File(image.path)); // Add the selected image to the list
    }
  }

  void removeImage(int index) {
    if (index >= 0 && index < selectedImages.length) {
      selectedImages.removeAt(index); // Remove the image at the specified index
    }
  }

  var selectedText2 = ''.obs;
  void updateSelectedText2(String text) {
    selectedText2.value = text;
  }
}
