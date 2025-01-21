import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/chatProfileView.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/boubleMsg.dart';
import 'package:topics/widget/Common_Widgets/input_chat_field.dart';

class OtherBobbleChatView extends StatelessWidget {
  const OtherBobbleChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/appbgchat2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () => Get.to(() => Chatprofileview()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  appBarTitle(
                    text: 'Joy Bright',
                  ),
                  horizontalGap(10),
                  const appBarTitle2(
                    text: '.',
                  ),
                  horizontalGap(10),
                  const appBarTitle2(
                    text: '@joybbright94',
                  ),
                ],
              ),
              verticalGap(5),
              const appBarSubTitle(
                text: 'Online',
              )
            ],
          ),
        ),
        titleSpacing: 0.0,
        leading: const backIconButtonLeading(),
        actions: [const appBarActionIcon()],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BobbleMsg(
                    sendme: false,
                    time: "12:45",
                    text: 'Nullam euismod mauris sit amet vehicula dictum!! 😎',
                    payment: '€20,50',
                  ),
                  verticalGap(20),
                  BobbleMsg(
                    sendme: true,
                    time: "12:46",
                    text: 'Nullam euismod mauris sit amet vehicula dictum!! 😎',
                    payment: '€ 9,99',
                  ),
                  verticalGap(20),
                  BobbleMsg(
                    sendme: false,
                    time: "12:47",
                    text: 'Nullam euismod mauris sit amet vehicula dictum!! 😎',
                    payment: '€ 5,00',
                  ),
                ],
              ),
            ),
          ),
          inputChatField(),
        ],
      ),
    );
  }
}
