import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/FilePicDocsView.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class Chatprofileview extends StatelessWidget {
  Chatprofileview({super.key});
  final ChatController chatController = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset('assets/images/profile_bg.png'),
              Column(
                children: [
                  verticalGap(50),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        backIconButtonLeading(),
                        appBarActionIcon(),
                      ],
                    ),
                  ),
                  verticalGap(80),
                  const ProfileTitle(text: 'Joy Bright')
                ],
              )
            ]),
            verticalGap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => FilePicDocsView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GeneralTextGrey(
                          text: 'Files, links and documents',
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: TopicColor.lightGrey,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  verticalGap(7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          child: Image.asset(
                            'assets/images/gallerypic1.png',
                            //height: 142,
                            // width: 95,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/gallerypic2.png',
                          // height: 142,
                          //  width: 95,
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 79,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/gallerypic3.png',
                          //  height: 142,
                          //  width: 95,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/gallerypic1.png',
                        ),
                      ),
                    ],
                  ),
                  verticalGap(35),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: TopicColor.bgGrey,
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30.0)),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20.0, top: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      profileHeadingwhite(
                                        text: 'Temporary message duration',
                                      ),
                                      const crossIcon(),
                                    ],
                                  ),
                                ),
                                verticalGap(14),
                                GestureDetector(
                                  onTap: () {
                                    chatController.selectedOption.value =
                                        '24 hours';
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GeneralTextwhite(
                                          text: '24 hours',
                                          icon: const SizedBox(height: 2),
                                        ),
                                        Obx(() => chatController
                                                    .selectedOption.value ==
                                                '24 hours'
                                            ? Icon(Icons.check,
                                                size: 30,
                                                color: TopicColor.primary)
                                            : const SizedBox()),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(color: TopicColor.lightGrey),
                                GestureDetector(
                                  onTap: () {
                                    chatController.selectedOption.value =
                                        '1 week';
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GeneralTextwhite(
                                          text: '1 week',
                                          icon: const SizedBox(height: 2),
                                        ),
                                        Obx(() => chatController
                                                    .selectedOption.value ==
                                                '1 week'
                                            ? Icon(Icons.check,
                                                size: 30,
                                                color: TopicColor.primary)
                                            : const SizedBox()),
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(color: TopicColor.lightGrey),
                                GestureDetector(
                                  onTap: () {
                                    chatController.selectedOption.value = 'Off';
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GeneralTextwhite(
                                          text: 'Off',
                                          icon: const SizedBox(height: 2),
                                        ),
                                        Obx(() => chatController
                                                    .selectedOption.value ==
                                                'Off'
                                            ? Icon(Icons.check,
                                                size: 30,
                                                color: TopicColor.primary)
                                            : const SizedBox()),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: const GeneralTextPrimary(
                      text: 'New temporary message',
                      icon: Icon(
                        Icons.timelapse,
                        color: TopicColor.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalGap(15),
            Divider(
              color: TopicColor.bgGrey,
            ),
            verticalGap(15),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.0),
                child: GeneralTextPrimary(
                    text: 'Move @joybright94 to Others chat',
                    icon: Image.asset(
                      'assets/images/email3.png',
                      width: 22,
                      height: 20,
                    ))),
            verticalGap(15),
            Divider(
              color: TopicColor.bgGrey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GeneralTextwhite(
                      text: 'Mute',
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/images/mute.png',
                            width: 20,
                            height: 20,
                          ),
                          horizontalGap(10),
                        ],
                      ),
                    ),
                    Switch(
                      value: chatController.isSwitched1.value,
                      onChanged: (value) {
                        chatController.toggleSwitch(value);
                      },
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: TopicColor.bgGrey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GeneralTextwhite(
                      text: 'Save to camera roll',
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/images/download.png',
                            width: 20,
                            height: 20,
                          ),
                          horizontalGap(10),
                        ],
                      ),
                    ),
                    Switch(
                      value: chatController.isSwitched2.value,
                      onChanged: (value) {
                        chatController.toggleSwitch2(value);
                      },
                      activeColor: TopicColor.primary,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: TopicColor.white,
                      inactiveTrackColor: Colors.grey.shade400,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: TopicColor.bgGrey,
            ),
            verticalGap(15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0),
              child: GeneralTextDanger(text: 'Delete conversation'),
            ),
            verticalGap(15),
            Divider(
              color: TopicColor.bgGrey,
            ),
            verticalGap(15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0),
              child: GeneralTextDanger(text: 'Block Joy Bright'),
            ),
            verticalGap(15),
            Divider(
              color: TopicColor.bgGrey,
            ),
            verticalGap(15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0),
              child: GeneralTextDanger(text: 'Report Joy Bright'),
            ),
            verticalGap(15),
            Divider(
              color: TopicColor.bgGrey,
            ),
            verticalGap(15),
          ],
        ),
      ),
    );
  }
}
