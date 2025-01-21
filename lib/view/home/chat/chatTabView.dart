import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_to/swipe_to.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/chatProfileView.dart';
import 'package:topics/widget/Chat_Widgets/Chat_common_widgets.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/boubleMsg.dart';
import 'package:topics/widget/Common_Widgets/input_chat_field.dart';
import 'package:topics/widget/Common_Widgets/poll_bobbleMsg.dart';

import '../../../constant/color_contant.dart';
import '../../../utils/widgets/topic_text_field.dart';

class chatView extends StatelessWidget {
  chatView({super.key});
  final List<Map<String, dynamic>> chatList = [
    {
      "dp": "assets/images/Cdp5.png",
      "title": "Javier Muli",
      "subtitle": "Pellentesque pharetra mi neque sp...",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp2.png",
      "title": "Isabella Hernandez",
      "subtitle": "You Rock!!! 🚀🚀",
      "time": "23 min",
    },
    {
      "dp": "assets/images/Cdp1.png",
      "title": "Joy Bright",
      "subtitle": "Hi! vel laoreet metus, nec congue ex. ",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp4.png",
      "title": "Javier Muli",
      "subtitle": "Pellentesque pharetra mi neque sp... ",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp5.png",
      "title": "Javier Muli",
      "subtitle": "Pellentesque pharetra mi neque sp...",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp1.png",
      "title": "Alexander Gobbs",
      "subtitle": "That sounds cool. What do you think...",
      "time": "4 min",
    },
    {
      "dp": "assets/images/Cdp2.png",
      "title": "Isabella Hernandez",
      "subtitle": "You Rock!!! 🚀🚀",
      "time": "23 min",
    },
    {
      "dp": "assets/images/Cdp3.png",
      "title": "Joy Bright",
      "subtitle": "Hi! vel laoreet metus, nec congue ex. ",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp4.png",
      "title": "Carlos Gomes",
      "subtitle": "Pellentesque pharetra mi neque sp...",
      "time": "2h",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalGap(15),
        TopicTextField(
          prefixIcon: Icons.search,
          hintText: 'Search...',
        ),
        verticalGap(10),
        Expanded(
          child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                final callData = chatList[index];
                return ChatTabListReplyContainer(
                  dp: callData['dp'],
                  title: callData['title'],
                  subtitle: callData['subtitle'],
                  time: callData['time'],
                  index: index,
                );
              }),
        ),
      ],
    );
  }
}

class ChatTabListReplyContainer extends StatelessWidget {
  ChatTabListReplyContainer({
    super.key,
    required this.title,
    this.subtitle,
    this.dp,
    this.time,
    required this.index,
  });

  final String title;
  final String? subtitle;
  final String? dp;
  final String? time;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Get.to(() => const ChatScreenView()),
            child: SwipeTo(
              //animationDuration: Duration.zero,
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
                        size: 20,
                      )),
                ),
              ),
              leftSwipeWidget: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          TopicColor.lightGrey, // Left side color
                          TopicColor.black, // Right side color
                        ],
                        end: Alignment.centerLeft,
                        begin: Alignment.centerRight,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15, top: 15, right: 20.0, left: 40.0),
                          child: Image.asset(
                            'assets/images/mute.png',
                            width: 20,
                            height: 20,
                          )),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(15)),
                      color: TopicColor.sender1,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/images/download2.png',
                      ),
                    ),
                  )
                ],
              ),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  //color: TopicColor.bgGrey,

                  borderRadius: BorderRadius.circular(10),
                  color: TopicColor.bgchatGrey,
                ),
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
                              //  fit: BoxFit.cover,
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
                                child: sufixtextchatlistcontainer(time: time),
                              ),
                            ],
                          ),
                          verticalGap(5),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
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
                      ),
                    ),
                  ],
                ),
              ),
              onRightSwipe: (details) {},
              onLeftSwipe: (details) {},
            ),
          ),
        ],
      ),
    );
  }
}

class ChatScreenView extends StatelessWidget {
  const ChatScreenView({super.key});

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
              image: AssetImage('assets/images/appbgchat.png'),
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
                text: 'Online at 22:23',
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
          const chatScreenBody(),
          //TextFormField(),
          inputChatField(),
        ],
      ),
    );
  }
}

class chatScreenBody extends StatelessWidget {
  const chatScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BobbleMsg(
              text: 'Hey, donec vulputate urna in lacus ullamcorper ',
              sendme: true,
              time: '10:30',
              showImg: true,
              img: "assets/images/gallery1.png",
            ),

            BobbleMsg(
              text: 'Hey, donec vulputate urna in lacus ullamcorper ',
              sendme: false,
              time: '10:30',
              img: "assets/images/gallery6.png",
              showImg: true,
            ),

            BobbleMsg(
              text: 'Hey, donec vulputate urna in lacus ullamcorper ',
              sendme: true,
              time: '10:30',
            ),
            BobbleMsg(
              sendme: true,
              time: '10:30',
              docs: true,
              img: 'assets/images/flat_top.png',
              text: 'houses24.pdf',
            ),
            BobbleMsg(
              text: 'houses25.pdf',
              showText: false,
              sendme: true,
              time: '10:30',
              docs: true,
              docsImg: false,
            ),
            verticalGap(15),
            BobbleMsg(
              text: 'houses26.pdf',
              showText: false,
              sendme: false,
              time: '12:13',
              docs: true,
              docsImg: false,
            ),
            BobbleMsg(
              text: 'Duis volutpat consectetur libero, et dignissim',
              time: '22:23',
              sendme: false,
              reply: true,
            ),
            BobbleMsg(
              reply: true,
              text:
                  'Phasellus rhoncus sapien vitae dolor fermentum ultrices. Integer viverra odio eget dolor mollis, vitae elementum massa lobortis. Nullam euismod mauris sit amet vehicula dictum.',
              time: '22:23',
              sendme: true,
            ),
            verticalGap(15),
            BobbleMsg(
              text: 'Nullam euismod mauris sit amet vehicula dictum!! 😎',
              sendme: true,
              time: '22:25',
              imgReply: true,
              replyImgUrl: 'assets/images/dp2.png',
            ),
            BobbleMsg(
              text: 'Nullam euismod mauris sit amet vehicula dictum!! 😎',
              sendme: true,
              time: '22:25',
            ),
            BobbleMsg(
              text: 'Nullam euismod mauris sit amet vehicula dictum!! 😎',
              sendme: true,
              time: '22:25',
            ),
            BobbleMsg(
              text: 'Nullam euismod mauris sit amet vehicula dictum!! 😎',
              sendme: true,
              time: '22:25',
            ),

            // const senderMsgContainer(
            //   text: 'Nullam euismod mauris sit amet vehicula dictum!! 😎',
            //   time: '22:25',
            // ),
            verticalGap(20),
            disappearMsg(
              text:
                  'Temporary messages are active and will disappear in 24 hours. Click to change.',
            ),
            verticalGap(20),
            disappearMsg(
              text: 'Temporary messages were turned off. Click to change.',
              color: TopicColor.reciver2,
            ),
            verticalGap(15),
            BobbleMsg(
              text: 'Location shared',
              sendme: false,
              location: true,
              time: '22:23',
              img: 'assets/images/map_chat.png',
              //text: 'sdfsad',
            ),
            verticalGap(15),
            BobbleMsg(
              sendme: true,
              contact: true,
              time: '22:23',
              img: 'assets/images/contact_dp.png',
              text: 'Amelie Smith',
              showText: false,
            ),
            verticalGap(15),
            Poll_Bobble_Msg(
              sendme: true,
            ),
            BobbleMsg(
              video: true,
              sendme: false,
              time: '22:23',
              showText: false,
            ),

            const BobbleImg(
              imgLengthGreaterthen1: 2,
              sendme: false,
              time: '12:45',
            ),
            const BobbleImg(
              imgLengthGreaterthen1: 3,
              sendme: false,
              time: '12:45',
            ),
            const BobbleImg(
              imgLengthGreaterthen1: 4,
              sendme: false,
              time: '12:45',
            ),
            const BobbleImg(
              imgLengthGreaterthen1: 5,
              sendme: false,
              time: '12:45',
            ),
            const BobbleImg(
              imgLengthGreaterthen1: 6,
              sendme: false,
              time: '12:45',
            ),
            const BobbleImg(
              imgLengthGreaterthen1: 6,
              sendme: false,
              time: '12:45',
            ),
            const BobbleImg(
              imgLengthGreaterthen1: 8,
              sendme: false,
              time: '12:45',
            ),
          ],
        ),
      ),
    ));
  }
}
