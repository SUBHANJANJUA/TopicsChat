// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';

import 'package:topics/widget/Chat_Widgets/Chat_common_widgets.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

import '../../../utils/widgets/standart_widget.dart';

class channelView extends StatelessWidget {
  channelView({super.key});
  final ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chatList = [
      {
        "dp": "assets/images/CHdp4.png",
        "title": "Carlos Gomes",
        "subtitle": "Pellentesque pharetra mi neque sp...",
        "time": "13k members",
        "online": true,
      },
      {
        "dp": "assets/images/CHdp5.png",
        "title": "Javier Muli",
        "subtitle": "Pellentesque pharetra mi neque sp...",
        "time": "13k members",
        "online": false,
      },
      {
        "dp": "assets/images/CHdp2.png",
        "title": "Isabella Hernandez",
        "subtitle": "You Rock!!! 🚀🚀",
        "time": "13k members",
        "online": true,
      },
      {
        "dp": "assets/images/CHdp6.png",
        "title": "Alexander Gobbs",
        "subtitle": "That sounds cool. What do you think...",
        "time": "13k members",
        "online": false,
      },
      {
        "dp": "assets/images/CHdp2.png",
        "title": "Isabella Hernandez",
        "subtitle": "You Rock!!! 🚀🚀",
        "time": "13k members",
        "online": true,
      },
      {
        "dp": "assets/images/CHdp3.png",
        "title": "Joy Bright",
        "subtitle": "Hi! vel laoreet metus, nec congue ex. ",
        "time": "13k members",
        "online": false,
      },
      {
        "dp": "assets/images/CHdp1.png",
        "title": "Joy Bright",
        "subtitle": "Hi! vel laoreet metus, nec congue ex. ",
        "time": "13k members",
        "online": true,
      },
      {
        "dp": "assets/images/CHdp4.png",
        "title": "Javier Muli",
        "subtitle": "Pellentesque pharetra mi neque sp... ",
        "time": "13k members",
        "online": false,
      },
      {
        "dp": "assets/images/CHdp5.png",
        "title": "Javier Muli",
        "subtitle": "Pellentesque pharetra mi neque sp...",
        "time": "13k members",
        "online": true,
      },
    ];

    return Column(
      children: [
        verticalGap(15),
        TopicTextField(
          prefixIcon: Icons.search,
          hintText: 'Search...',
        ),
        verticalGap(10),
        Obx(
          () => Column(
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: TopicColor.reciver1,
                    borderRadius: BorderRadius.vertical(
                        top: const Radius.circular(11),
                        bottom: controller.channelRequest.value
                            ? const Radius.circular(0)
                            : const Radius.circular(11))),
                child: GestureDetector(
                  onTap: () => controller.toggleChannelRequest(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: GeneralTextwhite(
                          text: 'You were added to 2 new groups.',
                          weight: FontWeight.w600,
                        )),
                        Icon(
                          controller.channelRequest.value
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: TopicColor.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              controller.channelRequest.value
                  ? Container(
                      width: double.infinity,
                      // height: 180,
                      decoration: BoxDecoration(
                          color: TopicColor.reciver1,
                          borderRadius: BorderRadius.vertical(
                              bottom: const Radius.circular(11),
                              top: controller.channelRequest.value
                                  ? const Radius.circular(0)
                                  : const Radius.circular(11))),
                      child: Column(
                        children: [
                          const ChannelArrievedRequestContainer(
                            text:
                                'Joy Bright added you to “Football friends” group.',
                          ),
                          SizedBox(
                            height: 2,
                            child: Divider(
                              color: TopicColor.lightGrey,
                            ),
                          ),
                          const ChannelArrievedRequestContainer(
                            text:
                                'Amelie Smith added you to “Best of the company” group.',
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
        verticalGap(10),
        Expanded(
          child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                final callData = chatList[index];
                return chatReplyContainerChannel(
                  dp: callData['dp'],
                  title: callData['title'],
                  subtitle: callData['subtitle'],
                  time: callData['time'],
                  online: callData['online'],
                  index: index,
                );
              }),
        ),
      ],
    );
  }
}

class ChannelArrievedRequestContainer extends StatelessWidget {
  const ChannelArrievedRequestContainer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SimpleWhitetextBold(
            text: text,
          ),
          verticalGap(10),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: TopicColor.bgchatGrey,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext builder) {
                        return ChannelRejectModalSheet();
                      });
                },
                child: Container(
                  width: 85,
                  height: 27,
                  decoration: BoxDecoration(
                      // color: TopicColor.primary,
                      border: Border.all(
                        color: TopicColor.lightGrey,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child:
                      const Center(child: SimpleWhitetextBold(text: 'Reject')),
                ),
              ),
              horizontalGap(15),
              Container(
                width: 85,
                height: 27,
                decoration: BoxDecoration(
                    color: TopicColor.primary,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(child: SimpleWhitetextBold(text: 'Accept')),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ChannelRejectModalSheet extends StatelessWidget {
  const ChannelRejectModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: const SimpleWhitetextBold(
                      text: 'Why are you reporting this user ?',
                      size: 18,
                    ),
                  ),
                  horizontalGap(10),
                  const crossIcon(
                    size: 35,
                  ),
                ],
              ),
              verticalGap(10),
              SimpleWhitetextBold(
                  weight: FontWeight.w400,
                  text:
                      'Your report is anonymous, except if you’re reporting an intellectual property infringement. If someone is in immediate danger, call the local emergency services - don’t wait.'),
              verticalGap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SimpleWhitetextBold(text: 'A specific post'),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: TopicColor.white,
                  ),
                ],
              ),
              //verticalGap(15),
            ],
          ),
        ),
        SizedBox(
          height: 2,
          child: Divider(
            color: TopicColor.lightGrey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SimpleWhitetextBold(text: 'Something about this user'),
              Icon(
                Icons.keyboard_arrow_right,
                color: TopicColor.white,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 2,
          child: Divider(
            color: TopicColor.lightGrey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SimpleWhitetextBold(text: 'Report as unlawful'),
              Icon(
                Icons.keyboard_arrow_right,
                color: TopicColor.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
