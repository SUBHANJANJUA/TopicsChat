import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_to/swipe_to.dart';

import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/widget/Common_Widgets/boubleMsg.dart';

import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';

class showSelectedImageContainer extends StatelessWidget {
  const showSelectedImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          // color: Colors.red,
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(11),
            child: Image.asset(
              'assets/images/gallery1.png', height: 100, width: 100,
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Positioned(
        right: 0,
        top: 0,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: TopicColor.lightGrey),
          child: Icon(
            Icons.close,
            color: TopicColor.white,
            size: 15,
          ),
        ),
      ),
      Positioned(
        left: 5,
        bottom: 10,
        child: GeneralTextwhite(
            text: "1",
            icon: const SizedBox(
              height: 1,
            )),
      ),
    ]);
  }
}

class SelectimageContainer extends StatelessWidget {
  const SelectimageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: TopicColor.bgGrey,
          ),
        ),
        Positioned(
          left: 36,
          top: 36,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: TopicColor.lightGrey,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.camera_alt_outlined,
              color: TopicColor.white,
              size: 15,
            ),
          ),
        ),
      ]),
    );
  }
}

class selectedContactGroupContainer extends StatelessWidget {
  const selectedContactGroupContainer({
    super.key,
    required this.name,
    this.color = TopicColor.primary,
  });
  final String name;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                  fontSize: 12,
                  color: TopicColor.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ));
  }
}

class newListContact extends StatelessWidget {
  const newListContact({
    super.key,
    required this.name,
    required this.dp,
  });
  final String name;
  final String dp;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Image.asset(
                dp,
                width: 35,
                height: 35,
              ),
              horizontalGap(10),
              GeneralTextwhite(
                text: name,
                icon: const SizedBox(
                  height: 1,
                ),
              )
            ],
          ),
        ),
        Icon(
          Icons.navigate_next_outlined,
          color: TopicColor.white,
          size: 30,
        )
      ],
    );
  }
}

class selectNewChatContainer extends StatelessWidget {
  const selectNewChatContainer({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: TopicColor.lightGrey2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          //horizontalGap(10),
          GeneralTextwhite(
              text: text,
              icon: const SizedBox(
                height: 1,
              ))
        ],
      ),
    );
  }
}

class ChatListReplyContainer extends StatelessWidget {
  ChatListReplyContainer({
    super.key,
    required this.title,
    this.subtitle,
    this.dp,
    this.time,
    required this.index,
    this.online = false,
  });
  final ChatController replylistController = Get.put(ChatController());
  final String title;
  final String? subtitle;
  final String? dp;
  final String? time;
  final int index;
  final bool? online;

  final ChatController controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => replylistController.replyToggleAnswerVisibility(index),
            child: Obx(
              () => SwipeTo(
                rightSwipeWidget: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(15)),
                    gradient: LinearGradient(
                      colors: [
                        TopicColor.primary, // Left side color
                        TopicColor.black, // Right side color
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, left: 20.0, right: 40.0),
                        child: Icon(
                          Icons.push_pin_outlined,
                          color: TopicColor.white,
                          size: 30,
                        )),
                  ),
                ),
                leftSwipeWidget: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(15)),
                    gradient: LinearGradient(
                      colors: [
                        TopicColor.lightOrange,
                        TopicColor.black,
                      ],
                      end: Alignment.centerLeft,
                      begin: Alignment.centerRight,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, top: 20, right: 20.0, left: 40.0),
                        child: Image.asset(
                          'assets/images/delete_white.png',
                          width: 18,
                          height: 20,
                        )),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius:
                        replylistController.ReplyselectedIndex.value == index
                            ? const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))
                            : BorderRadius.circular(10),
                    color: TopicColor.bgchatGrey,
                  ),
                  child: Padding(
                    padding:
                        replylistController.ReplyselectedIndex.value == index
                            ? const EdgeInsets.all(4.0)
                            : EdgeInsets.zero,
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: dp != null
                              ? Image.asset(
                                  dp!,
                                )
                              : Icon(
                                  Icons.account_circle,
                                  size: 40,
                                  color: Colors.grey[400],
                                ),
                        ),
                        horizontalGap(10),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    title,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Obx(
                                    () => Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: replylistController
                                                  .ReplyselectedIndex.value ==
                                              index
                                          ? const Icon(
                                              Icons.keyboard_arrow_up_outlined,
                                              color: Colors.white,
                                            )
                                          : Row(
                                              children: [
                                                sufixtextchatlistcontainer(
                                                    time: time),
                                                horizontalGap(10),
                                                replylistController
                                                            .pinChat.value ==
                                                        index
                                                    ? Image.asset(
                                                        'assets/images/pin_push.png',
                                                        width: 12,
                                                        height: 20,
                                                      )
                                                    : SizedBox.shrink(),
                                                if (online == true)
                                                  Row(
                                                    children: [
                                                      horizontalGap(5),
                                                      Container(
                                                        width: 7,
                                                        height: 7,
                                                        decoration:
                                                            const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: TopicColor
                                                                    .primary),
                                                      ),
                                                    ],
                                                  )
                                              ],
                                            ),
                                    ),
                                  ),
                                ],
                              ),

                              // if (subtitle != null)
                              Obx(() => replylistController
                                          .ReplyselectedIndex.value ==
                                      index
                                  ? const SizedBox.shrink()
                                  : Column(
                                      children: [
                                        verticalGap(5),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            subtitle!,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onRightSwipe: (details) {
                  replylistController.togglePinChat(index);
                },
                onLeftSwipe: (details) {
                  //replylistController.togglePinChat(index);
                },
              ),
            ),
          ),
          Obx(
            () => replylistController.ReplyselectedIndex.value == index
                ? Container(
                    height: 390,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: TopicColor.bgchatGrey,
                      borderRadius:
                          replylistController.ReplyselectedIndex.value == index
                              ? const BorderRadius.only(
                                  bottomLeft: Radius.circular(11),
                                  bottomRight: Radius.circular(11))
                              : BorderRadius.circular(11),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spa,
                      children: [
                        const ToReplyChatViewContainer(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TopicTextField(
                            hintText: 'Write something...',
                            suffixIcon: Icons.send,
                          ),
                        )
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class ToReplyChatViewContainer extends StatelessWidget {
  const ToReplyChatViewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            BobbleMsg(
              text:
                  'Hi! vel laoreet metus, nec congue ex. Vestibulum in velit vitae leo elementum ornare. ',
              sendme: true,
              time: '12:13',
            ),
            BobbleMsg(
              text:
                  'That sounds cool. What do you think about a pool party in my house?',
              sendme: true,
              time: '12:13',
            ),
            BobbleMsg(
              text: 'You Rock!!! 🚀🚀',
              sendme: true,
              time: '12:13',
            ),
            const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: sufixtextchatlistcontainer(
                    time: '1d',
                  ),
                )),
            verticalGap(40),
            BobbleMsg(
              time: '12:13',
              text: 'Hey, donec vulputate urna in lacus ullamcorper lobortis?',
              sendme: false,
            ),
            BobbleMsg(
                time: '12:13',
                sendme: false,
                text:
                    'Hi! vel laoreet metus, nec congue ex. Vestibulum in velit vitae leo elementum ornare. '),
            BobbleMsg(
              time: '12:13',
              sendme: false,
              text:
                  'That sounds cool. What do you think about a pool party in my house?',
            ),
            BobbleMsg(time: '12:13', sendme: false, text: 'You Rock!!! 🚀🚀'),
            BobbleMsg(
              sendme: false,
              time: '12:13',
              text:
                  'That sounds cool. What do you think about a pool party in my house?',
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: sufixtextchatlistcontainer(
                    time: '4 min',
                  ),
                )),
            verticalGap(40),
            BobbleMsg(
                time: '12:13',
                sendme: true,
                text:
                    'Hi! vel laoreet metus, nec congue ex. Vestibulum in velit vitae leo elementum ornare. '),
            BobbleMsg(
              time: '12:13',
              sendme: true,
              text:
                  'That sounds cool. What do you think about a pool party in my house?',
            ),
            const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: sufixtextchatlistcontainer(
                    time: '3 min',
                  ),
                )),
            verticalGap(40),
            BobbleMsg(time: '12:13', sendme: false, text: 'You Rock!!! 🚀🚀'),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: sufixtextchatlistcontainer(
                    time: '2 min',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class sufixtextchatlistcontainer extends StatelessWidget {
  const sufixtextchatlistcontainer({
    super.key,
    required this.time,
  });

  final String? time;

  @override
  Widget build(BuildContext context) {
    return Text(
      time!,
      style: TextStyle(
        color: TopicColor.lightGrey,
        fontSize: 12,
      ),
    );
  }
}
