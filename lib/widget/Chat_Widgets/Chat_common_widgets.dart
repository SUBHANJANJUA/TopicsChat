import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';

class chatReplyContainerChannel extends StatelessWidget {
  chatReplyContainerChannel({
    Key? key,
    required this.title,
    this.subtitle,
    this.dp,
    this.time,
    this.online = false,
    required this.index,
  }) : super(key: key);
  final String title;
  final String? subtitle;
  final String? dp;
  final String? time;
  final int index;
  final bool? online;
  final ChatController channellistController = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        channellistController.channelToggleAnswerVisibility(index);
        log('change color');
        log('${channellistController.channelselectedIndex.value}');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Obx(
          () => Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: channellistController.channelselectedIndex.value == index
                  ? TopicColor.primaryGrey
                  : TopicColor.bgchatGrey,
            ),
            child: Padding(
              padding: EdgeInsets.zero,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Row(
                                children: [
                                  sufixtextchatlistcontainer(time: time),
                                  if (online == true)
                                    Row(
                                      children: [
                                        horizontalGap(5),
                                        Container(
                                          width: 7,
                                          height: 7,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: TopicColor.primary),
                                        ),
                                      ],
                                    )
                                ],
                              ),
                            ),
                          ],
                        ),

                        // if (subtitle != null)
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Column(
                            children: [
                              verticalGap(5),
                              Text(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                subtitle!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class disappearMsg extends StatelessWidget {
  disappearMsg({
    super.key,
    required this.text,
    this.color = Colors.white,
  });
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 53,
      decoration: BoxDecoration(
        color: TopicColor.reciver1,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.timelapse,
              color: color,
              size: 20,
            ),
            horizontalGap(5),
            Expanded(
              child: Text(text,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: color,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
