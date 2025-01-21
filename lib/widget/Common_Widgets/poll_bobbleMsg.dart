import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';

import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/widget/Common_Widgets/boubleMsg.dart';

import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class Poll_Bobble_Msg extends StatelessWidget {
  Poll_Bobble_Msg({
    super.key,
    required this.sendme,
    //this.group = false,
  });
  final bool sendme;
  // final bool? group;
  final ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: sendme ? Alignment.centerRight : Alignment.centerLeft,
        child: GestureDetector(
          onLongPress: () {
            showDialog(
              context: context,
              builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sendme
                        ? const SizedBox.shrink()
                        : Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Container(
                                width: 260,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(11),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10, sigmaY: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            EmojiText(
                                              emoji: '❤️',
                                            ),
                                            EmojiText(
                                              emoji: '😍',
                                            ),
                                            EmojiText(
                                              emoji: '👍🏽',
                                            ),
                                            EmojiText(
                                              emoji: '😂',
                                            ),
                                            EmojiText(
                                              emoji: '😢',
                                            ),
                                            EmojiText(
                                              emoji: '😡',
                                            ),
                                            Icon(
                                              Icons.add_circle_outline_outlined,
                                              color: Colors.white,
                                              size: 25,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                    verticalGap(10),
                    // BobbleMsg(
                    //   text: text.toString(),
                    //   time: time.toString(),
                    //   sendme: sendme,
                    // ),
                    verticalGap(10),
                    Align(
                      alignment:
                          sendme ? Alignment.centerRight : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          width: 171,
                          //height: 255,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0,
                                            right: 10.0,
                                            top: 15,
                                            bottom: 8.0),
                                        child: GeneralTextwhite(
                                          text: 'Mark with star',
                                          icon: const Icon(
                                            Icons.star_outline_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          gap: 5,
                                        ),
                                      ),
                                      Divider(
                                        color: TopicColor.lightGrey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8),
                                        child: GeneralTextwhite(
                                          text: 'Reply',
                                          icon: Image.asset(
                                            'assets/images/reply.png',
                                            width: 20,
                                            height: 15,
                                          ),
                                          gap: 5,
                                        ),
                                      ),
                                      Divider(
                                        color: TopicColor.lightGrey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8),
                                        child: GeneralTextwhite(
                                          text: 'Forward to',
                                          icon: Image.asset(
                                            'assets/images/forword.png',
                                            width: 20,
                                            height: 15,
                                          ),
                                          gap: 5,
                                        ),
                                      ),
                                      Divider(
                                        color: TopicColor.lightGrey,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0, vertical: 8),
                                        child: GeneralTextwhite(
                                          text: 'Copy',
                                          icon: const Icon(
                                            Icons.copy_all_sharp,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          gap: 5,
                                        ),
                                      ),
                                      Divider(
                                        color: TopicColor.lightGrey,
                                      ),
                                      sendme
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8),
                                              child: GeneralTextwhite(
                                                text: 'Edit',
                                                icon: const Icon(
                                                  Icons.edit_outlined,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                                gap: 5,
                                              ),
                                            )
                                          : const SizedBox.shrink(),
                                      sendme
                                          ? Divider(
                                              color: TopicColor.lightGrey,
                                            )
                                          : const SizedBox.shrink(),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0,
                                            right: 10,
                                            top: 8,
                                            bottom: 15),
                                        child: GestureDetector(
                                          onTap: () {
                                            Get.back();
                                            sendme
                                                ? showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    shape: const RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        30))),
                                                    context: context,
                                                    backgroundColor:
                                                        TopicColor.bgGrey,
                                                    builder:
                                                        (BuildContext context) {
                                                      return SizedBox(
                                                        height: context.height *
                                                            0.95,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20.0),
                                                          child:
                                                              poll_Msg_info_modalSheet(),
                                                        ),
                                                      );
                                                    })
                                                : const SizedBox.shrink();
                                          },
                                          child: GeneralTextwhite(
                                            text: 'Info',
                                            icon: const Icon(
                                              Icons.info_outline,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            gap: 5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          },
          child: Container(
            width: 220,
            //height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              gradient: LinearGradient(
                colors: [
                  sendme ? TopicColor.sender2 : TopicColor.reciver1,
                  sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nullam euismod mauris sit amet vehicula dictum!! 😎',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: TopicColor.white),
                  ),
                  Text(
                    'Select one ore more options',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: sendme
                            ? TopicColor.lightGrey
                            : TopicColor.lightGrey2),
                  ),
                  verticalGap(20),
                  Obx(
                    () => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                            ),
                            child: Radio<int>(
                              activeColor: TopicColor.white,
                              focusColor: Colors.grey,
                              value: 1,
                              groupValue: controller.pollRadio.value,
                              onChanged: (value) {
                                controller.updatePoll(value!);
                              },
                            ),
                          ),
                        ),
                        horizontalGap(10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GeneralTextwhite(text: '12th January'),
                                  Row(
                                    children: [
                                      Container(
                                        // color: Colors.red,
                                        width: 28,
                                        child: Stack(
                                          children: [
                                            Image.asset(
                                              'assets/images/dp4.png',
                                              width: 16,
                                              height: 16,
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Image.asset(
                                                'assets/images/dp5.png',
                                                width: 16,
                                                height: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      horizontalGap(5),
                                      const GeneralTextGrey(text: '1')
                                    ],
                                  )
                                ],
                              ),
                              verticalGap(5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: LinearProgressIndicator(
                                  minHeight: 8,
                                  value: 0.65,
                                  backgroundColor: TopicColor.lightGrey,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          TopicColor.primary),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  verticalGap(15),
                  Obx(
                    () => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                            ),
                            child: Radio<int>(
                              activeColor: TopicColor.white,
                              focusColor: Colors.grey,
                              value: 2,
                              groupValue: controller.pollRadio.value,
                              onChanged: (value) {
                                controller.updatePoll(value!);
                              },
                            ),
                          ),
                        ),
                        horizontalGap(10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GeneralTextwhite(text: '13th January'),
                                  Row(
                                    children: [
                                      Container(
                                        // color: Colors.red,
                                        width: 28,
                                        child: Stack(
                                          children: [
                                            Image.asset(
                                              'assets/images/dp4.png',
                                              width: 16,
                                              height: 16,
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Image.asset(
                                                'assets/images/dp5.png',
                                                width: 16,
                                                height: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      horizontalGap(5),
                                      const GeneralTextGrey(text: '3')
                                    ],
                                  )
                                ],
                              ),
                              verticalGap(5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: LinearProgressIndicator(
                                  minHeight: 8,
                                  value: 1,
                                  backgroundColor: TopicColor.lightGrey,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          TopicColor.primary),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  verticalGap(15),
                  Obx(
                    () => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                            ),
                            child: Radio<int>(
                              activeColor: TopicColor.white,
                              focusColor: Colors.grey,
                              value: 3,
                              groupValue: controller.pollRadio.value,
                              onChanged: (value) {
                                controller.updatePoll(value!);
                              },
                            ),
                          ),
                        ),
                        horizontalGap(10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GeneralTextwhite(text: '14th January'),
                                  Row(
                                    children: [
                                      // Container(
                                      //   // color: Colors.red,
                                      //   width: 28,
                                      //   child: Stack(
                                      //     children: [
                                      //       Image.asset(
                                      //         'assets/images/dp4.png',
                                      //         width: 16,
                                      //         height: 16,
                                      //       ),
                                      //       Align(
                                      //         alignment: Alignment.centerRight,
                                      //         child: Image.asset(
                                      //           'assets/images/dp5.png',
                                      //           width: 16,
                                      //           height: 16,
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // ),
                                      horizontalGap(5),
                                      const GeneralTextGrey(text: '0')
                                    ],
                                  )
                                ],
                              ),
                              verticalGap(5),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: LinearProgressIndicator(
                                  minHeight: 8,
                                  value: 0,
                                  backgroundColor: TopicColor.lightGrey,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          TopicColor.primary),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  verticalGap(25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const GeneralTextPrimary(
                        text: 'All votes',
                        size: 12,
                        weight: FontWeight.w600,
                      ),
                      Row(
                        children: [
                          const GeneralTextGrey(
                            text: '22:23',
                            size: 12,
                          ),
                          Image.asset(
                            'assets/images/greytick.png',
                            width: 17,
                            height: 9,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class poll_Msg_info_modalSheet extends StatelessWidget {
  poll_Msg_info_modalSheet({
    super.key,
  });
  final List<Map<dynamic, String>> January12th = [
    {
      "time": 'Today, 22:23',
      "title": 'Carlos Gomes',
      "dp": 'assets/images/dp1.png',
    },
    {
      "time": 'Today, 22:23',
      "title": 'John Travis',
      "dp": 'assets/images/dp2.png',
    },
  ];

  final List<Map<dynamic, String>> January13th = [
    {
      "time": 'Today, 22:23',
      "title": 'Carlos Gomes',
      "dp": 'assets/images/dp1.png',
    },
    {
      "time": 'Today, 22:23',
      "title": 'John Travis',
      "dp": 'assets/images/dp2.png',
    },
    {
      "time": 'Today, 22:23',
      "title": 'John Travis',
      "dp": 'assets/images/dp3.png',
    },
  ];

  final List<Map<dynamic, String>> January14th = [
    // {
    //   "time": 'Today, 22:23',
    //   "title": 'Carlos Gomes',
    //   "dp": 'assets/images/dp1.png',
    // },
    // {
    //   "time": 'Today, 22:23',
    //   "title": 'John Travis',
    //   "dp": 'assets/images/dp2.png',
    // },
    // {
    //   "time": 'Today, 22:23',
    //   "title": 'John Travis',
    //   "dp": 'assets/images/dp3.png',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              whiteHeading24(
                text: 'Poll details',
              ),
              crossIcon(
                size: 35,
              )
            ],
          ),
          verticalGap(20),
          Container(
            height: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: TopicColor.sender1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child:
                    Text('Nullam euismod mauris sit amet vehicula dictum!! 😎',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: TopicColor.white,
                        )),
              ),
            ),
          ),
          verticalGap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GeneralTextwhite(
                text: '12th January',
                size: 16,
              ),
              GeneralTextGrey(
                text: '${January12th.length} votes',
                weight: FontWeight.w600,
              ),
            ],
          ),
          verticalGap(5),
          January12th.length > 0
              ? Poll_Container_outline(
                  widget: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: January12th.length,
                      itemBuilder: (context, index) {
                        final callback = January12th[index];
                        return Poll_View_Container(
                            dp: callback['dp']!,
                            title: callback['title']!,
                            time: callback['time']!);
                      }),
                )
              : SizedBox.shrink(),
          verticalGap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GeneralTextwhite(
                text: '13th January',
                size: 16,
              ),
              GeneralTextGrey(
                text: '${January13th.length} votes',
                weight: FontWeight.w600,
              ),
            ],
          ),
          verticalGap(5),
          January13th.length > 0
              ? Poll_Container_outline(
                  widget: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: January13th.length,
                      itemBuilder: (context, index) {
                        final callback = January13th[index];
                        return Poll_View_Container(
                            dp: callback['dp']!,
                            title: callback['title']!,
                            time: callback['time']!);
                      }),
                )
              : SizedBox.shrink(),
          verticalGap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GeneralTextwhite(
                text: '14th January',
                size: 16,
              ),
              GeneralTextGrey(
                text: '${January14th.length} votes',
                weight: FontWeight.w600,
              ),
            ],
          ),
          verticalGap(5),
          January14th.length > 0
              ? Poll_Container_outline(
                  widget: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: January14th.length,
                      itemBuilder: (context, index) {
                        final callback = January14th[index];
                        log('empty working');
                        return Poll_View_Container(
                            dp: callback['dp']!,
                            title: callback['title']!,
                            time: callback['time']!);
                      }),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}

class Poll_Container_outline extends StatelessWidget {
  const Poll_Container_outline({
    super.key,
    required this.widget,
  });
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          border: Border.all(
            color: TopicColor.lightGrey,
            width: 1.0,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: widget,
      ),
    );
  }
}

class Poll_View_Container extends StatelessWidget {
  const Poll_View_Container({
    super.key,
    required this.dp,
    required this.title,
    required this.time,
  });
  final String dp;
  final String title;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    dp,
                    width: 35,
                    height: 35,
                  ),
                  horizontalGap(10),
                  GeneralTextwhite(text: title)
                ],
              ),
              GeneralTextGrey(
                text: time,
                size: 12,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 1,
          child: Divider(
            color: TopicColor.lightGrey,
          ),
        )
      ],
    );
  }
}
