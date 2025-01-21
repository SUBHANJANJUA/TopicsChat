import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/call/callMain.dart';
import 'package:topics/view/home/call/call_controller/call_controller.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';

class CallingView extends StatelessWidget {
  CallingView({
    super.key,
    this.videoCall = false,
  });
  final bool? videoCall;
  final CallController controller = Get.put(CallController());
  final ChatController chatController = Get.put(ChatController());

  final List<Map<dynamic, String>> contactsList = [
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery1.png",
    },
    {
      "name": "John Travis",
      "pic": "",
    },
    {
      "name": "William Malt",
      "pic": "assets/images/gallery3.png",
    },
    {
      "name": "Carlos Gomes",
      "pic": "assets/images/gallery4.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery5.png",
    },
    {
      "name": "Bob Mills",
      "pic": "assets/images/gallery6.png",
    },
    {
      "name": "Amelie Smith",
      "pic": "assets/images/gallery8.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery1.png",
    },
    {
      "name": "John Travis",
      "pic": "assets/images/gallery2.png",
    },
    {
      "name": "William Malt",
      "pic": "assets/images/gallery3.png",
    },
    {
      "name": "Carlos Gomes",
      "pic": "assets/images/gallery4.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery5.png",
    },
    {
      "name": "Bob Mills",
      "pic": "assets/images/gallery6.png",
    },
    {
      "name": "Amelie Smith",
      "pic": "assets/images/gallery8.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery1.png",
    },
    {
      "name": "John Travis",
      "pic": "assets/images/gallery2.png",
    },
    {
      "name": "William Malt",
      "pic": "assets/images/gallery3.png",
    },
    {
      "name": "Carlos Gomes",
      "pic": "assets/images/gallery4.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery5.png",
    },
    {
      "name": "Bob Mills",
      "pic": "assets/images/gallery6.png",
    },
    {
      "name": "Amelie Smith",
      "pic": "assets/images/gallery8.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            callingBgContainer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
              child: GestureDetector(
                onTap: () {
                  log('message ${controller.screenCount.value}');
                  controller.screenIncease();
                },
                onLongPress: () {
                  controller.screenCount.value = 0;
                },
                onDoubleTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: TopicColor.bgchatGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      context: context,
                      builder: (BuildContext builder) {
                        return SelectNewGroupCallModalSheet(
                          contactsList: contactsList,
                          controller: chatController,
                          inviteCall: true,
                        );
                      });
                },
                child: Image.asset(
                  'assets/images/person_plus.png',
                  width: 31,
                  height: 20,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalGap(200),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SimpleWhitetextBold(
                            text: 'Joy Bright',
                            size: 36,
                          ),
                          controller.screenCount.value == 2
                              ? SimpleWhitetextBold(
                                  text: ' &',
                                  size: 36,
                                )
                              : controller.screenCount.value > 2
                                  ? SimpleWhitetextBold(
                                      text:
                                          ' +${controller.screenCount.value - 1}',
                                      size: 36,
                                    )
                                  : SizedBox.shrink(),
                        ],
                      ),
                      controller.screenCount.value == 2
                          ? SimpleWhitetextBold(
                              text: 'Javier Muli',
                              size: 36,
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                  verticalGap(10),
                  controller.screenCount.value > 0
                      ? const Text(
                          '00:04',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          'Calling...',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        videoCall!
                            ? Row(
                                children: [
                                  CallingActionContainer(
                                    widget: Padding(
                                      padding: const EdgeInsets.all(11.0),
                                      child: Image.asset(
                                        'assets/images/person_plus.png',
                                      ),
                                    ),
                                  ),
                                  horizontalGap(15),
                                  CallingActionContainer(
                                    widget: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        'assets/images/video_cancel.png',
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox.shrink(),
                        horizontalGap(15),
                        CallingActionContainer(
                          widget: const Icon(
                            Icons.mic_off_outlined,
                            color: TopicColor.white,
                            size: 25,
                          ),
                        ),
                        horizontalGap(15),
                        CallingActionContainer(
                          widget: const Icon(
                            Icons.volume_up_outlined,
                            color: TopicColor.white,
                            size: 25,
                          ),
                        ),
                        horizontalGap(15),
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: CallingActionContainer(
                            bgColor: TopicColor.lightOrange,
                            widget: const Icon(
                              Icons.call_end_outlined,
                              color: TopicColor.white,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class callingBgContainer extends StatelessWidget {
  callingBgContainer({
    super.key,
  });
  final CallController controller = Get.put(CallController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: controller.screenCount == 0
          ? Image.asset(
              'assets/images/bg_calling.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : controller.screenCount == 1
              ? Image.asset(
                  'assets/images/bg_calling.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.fill,
                )
              : controller.screenCount == 2
                  ? Row(
                      children: [
                        Image.asset(
                          'assets/images/bg_calling.png',
                          width: context.width * 0.5,
                          height: double.infinity,
                          fit: BoxFit.fitHeight,
                        ),
                        Image.asset(
                          'assets/images/bg_calling2.png',
                          width: context.width * 0.5,
                          height: double.infinity,
                          fit: BoxFit.fitHeight,
                        )
                      ],
                    )
                  : controller.screenCount == 3
                      ? Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/bg_calling.png',
                                  width: context.width * 0.5,
                                  height: context.height * 0.5,
                                  fit: BoxFit.fitHeight,
                                ),
                                Image.asset(
                                  'assets/images/bg_calling2.png',
                                  width: context.width * 0.5,
                                  height: context.height * 0.5,
                                  fit: BoxFit.fitHeight,
                                )
                              ],
                            ),
                            Image.asset(
                              'assets/images/bg_calling2.png',
                              width: context.width * 1,
                              height: context.height * 0.5,
                              fit: BoxFit.fitWidth,
                            )
                          ],
                        )
                      : controller.screenCount == 4
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/bg_calling.png',
                                      width: context.width * 0.5,
                                      height: context.height * 0.5,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    Image.asset(
                                      'assets/images/bg_calling2.png',
                                      width: context.width * 0.5,
                                      height: context.height * 0.5,
                                      fit: BoxFit.fitHeight,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/bg_calling2.png',
                                      width: context.width * 0.5,
                                      height: context.height * 0.5,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    Image.asset(
                                      'assets/images/bg_calling.png',
                                      width: context.width * 0.5,
                                      height: context.height * 0.5,
                                      fit: BoxFit.fitHeight,
                                    )
                                  ],
                                ),
                              ],
                            )
                          : controller.screenCount == 5
                              ? Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/bg_calling.png',
                                          width: context.width * 0.5,
                                          height: context.height * 0.333,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Image.asset(
                                          'assets/images/bg_calling2.png',
                                          width: context.width * 0.5,
                                          height: context.height * 0.333,
                                          fit: BoxFit.fitWidth,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/bg_calling2.png',
                                          width: context.width * 0.5,
                                          height: context.height * 0.333,
                                          fit: BoxFit.fitWidth,
                                        ),
                                        Image.asset(
                                          'assets/images/bg_calling.png',
                                          width: context.width * 0.5,
                                          height: context.height * 0.333,
                                          fit: BoxFit.fitWidth,
                                        )
                                      ],
                                    ),
                                    Image.asset(
                                      'assets/images/bg_calling2.png',
                                      width: context.width * 1,
                                      height: context.height * 0.333,
                                      fit: BoxFit.fitWidth,
                                    )
                                  ],
                                )
                              : controller.screenCount == 6
                                  ? Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/bg_calling.png',
                                              width: context.width * 0.5,
                                              height: context.height * 0.333,
                                              fit: BoxFit.fitWidth,
                                            ),
                                            Image.asset(
                                              'assets/images/bg_calling2.png',
                                              width: context.width * 0.5,
                                              height: context.height * 0.333,
                                              fit: BoxFit.fitWidth,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/bg_calling2.png',
                                              width: context.width * 0.5,
                                              height: context.height * 0.333,
                                              fit: BoxFit.fitWidth,
                                            ),
                                            Image.asset(
                                              'assets/images/bg_calling.png',
                                              width: context.width * 0.5,
                                              height: context.height * 0.333,
                                              fit: BoxFit.fitWidth,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/bg_calling.png',
                                              width: context.width * 0.5,
                                              height: context.height * 0.333,
                                              fit: BoxFit.fitWidth,
                                            ),
                                            Image.asset(
                                              'assets/images/bg_calling2.png',
                                              width: context.width * 0.5,
                                              height: context.height * 0.333,
                                              fit: BoxFit.fitWidth,
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  : controller.screenCount == 7
                                      ? Column(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/bg_calling.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                Image.asset(
                                                  'assets/images/bg_calling2.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/bg_calling2.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                Image.asset(
                                                  'assets/images/bg_calling.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/bg_calling.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                Image.asset(
                                                  'assets/images/bg_calling2.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                )
                                              ],
                                            ),
                                            Image.asset(
                                              'assets/images/bg_calling2.png',
                                              width: context.width * 1,
                                              height: context.height * 0.25,
                                              fit: BoxFit.fitWidth,
                                            )
                                          ],
                                        )
                                      //else part of the ternory operators
                                      : Column(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/bg_calling.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                Image.asset(
                                                  'assets/images/bg_calling2.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/bg_calling2.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                Image.asset(
                                                  'assets/images/bg_calling.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/bg_calling.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                Image.asset(
                                                  'assets/images/bg_calling2.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/bg_calling2.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                                Image.asset(
                                                  'assets/images/bg_calling.png',
                                                  width: context.width * 0.5,
                                                  height: context.height * 0.25,
                                                  fit: BoxFit.fitWidth,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
    );
  }
}

class CallingActionContainer extends StatelessWidget {
  CallingActionContainer({
    super.key,
    required this.widget,
    this.bgColor = TopicColor.lightGrey2,
  });
  final Widget widget;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: bgColor),
        child: widget);
  }
}
