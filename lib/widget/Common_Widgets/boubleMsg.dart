import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_to/swipe_to.dart';

import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/widget/Chat_Widgets/MsgInfo.dart';
import 'package:topics/widget/Common_Widgets/ImgSizeBobleChat.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/input_chat_field.dart';

import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class BobbleMsg extends StatelessWidget {
  BobbleMsg({
    super.key,
    this.text = '',
    required this.sendme,
    required this.time,
    this.group = false,
    this.showImg = false,
    this.showText = true,
    this.img = '',
    this.replyImgUrl = '',
    this.docs = false,
    this.docsImg = true,
    this.location = false,
    this.contact = false,
    this.video = false,
    this.reply = false,
    this.imgReply = false,
    this.payment = '',
  });

  final bool sendme;
  final bool? group;
  final bool? showImg;
  final bool? showText;
  final String? img;
  final String? replyImgUrl;
  final bool? docs;
  final bool? docsImg;
  final bool? location;
  final bool? contact;
  final bool? video;
  final bool? reply;
  final bool? imgReply;
  final String? payment;
  final String? text;

  final String time;
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return SwipeTo(
      rightSwipeWidget: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/images/reply.png',
            width: 20,
            height: 13,
          ),
        ),
      ),
      child: Align(
        alignment: sendme ? Alignment.centerRight : Alignment.centerLeft,
        child: Padding(
          padding: sendme
              ? const EdgeInsets.only(bottom: 5.0, right: 10.0)
              : const EdgeInsets.only(bottom: 5.0, left: 10.0),
          child: GestureDetector(
            onLongPress: () {
              log('message');
              showDialog(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Container(
                            width: 260,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.2),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.0),
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
                      BobbleMsg(
                        text: text.toString(),
                        time: time.toString(),
                        sendme: sendme,
                      ),
                      verticalGap(10),
                      Align(
                        alignment: sendme
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
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
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
                                        const Divider(
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
                                        const Divider(
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
                                        const Divider(
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
                                        const Divider(
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
                                        const Divider(
                                          color: TopicColor.lightGrey,
                                        ),
                                        sendme
                                            ? GestureDetector(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          TopicColor.bgchatGrey,
                                                      shape:
                                                          const RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .vertical(
                                                        top:
                                                            Radius.circular(30),
                                                      )),
                                                      context: context,
                                                      builder: (BuildContext
                                                          builder) {
                                                        return const payforReplyModalSheet();
                                                      });
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 8),
                                                  child: GeneralTextwhite(
                                                    text: 'Pay for reply',
                                                    icon: Image.asset(
                                                      'assets/images/bag.png',
                                                      width: 20,
                                                      height: 15,
                                                    ),
                                                    gap: 5,
                                                  ),
                                                ),
                                              )
                                            : const SizedBox.shrink(),
                                        sendme
                                            ? const Divider(
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
                                                      context: context,
                                                      backgroundColor:
                                                          TopicColor.bgGrey,
                                                      builder: (BuildContext
                                                          context) {
                                                        return group!
                                                            ? const GroupMsgInfo()
                                                            : const signlyChatMsgInfo();
                                                      })
                                                  : const SizedBox.shrink();
                                              //   : group!
                                              // ? showModalBottomSheet(
                                              //     context: context,
                                              //     backgroundColor:
                                              //         TopicColor.bgGrey,
                                              //     builder: (BuildContext
                                              //         context) {
                                              //       return GroupMsgInfo();
                                              //     })
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
            child: BobbleMsgContainer(
                showText: showText,
                location: location,
                contact: contact,
                sendme: sendme,
                img: img,
                replyImgUrl: replyImgUrl,
                docs: docs,
                docsImg: docsImg,
                video: video,
                time: time,
                reply: reply,
                imgReply: imgReply,
                payment: payment,
                showImg: showImg,
                text: text),
          ),
        ),
      ),
      onRightSwipe: (details) {
        log('  reply msg ${text}');
        if (controller.isReply == true) {
          controller.toggleIsReply(false, '', '', '');
        }

        controller.toggleIsReply(
            true, text, img.toString(), payment.toString());
      },
    );
  }
}

class payforReplyModalSheet extends StatelessWidget {
  const payforReplyModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Expanded(
                  child: SimpleWhitetextBold(
                text: 'Pay for reply',
                size: 18,
              )),
              horizontalGap(10),
              const crossIcon(
                size: 30,
              )
            ],
          ),
          verticalGap(10),
          const GeneralTextGrey(
              text:
                  'Choose the price to pay for the reply. The user will receive the payment after replying to your message.'),
          verticalGap(35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SimpleWhitetextBold(
                text: '20,50',
                size: 55,
                weight: FontWeight.w300,
              ),
              horizontalGap(5),
              Column(
                children: [verticalGap(30), const GeneralTextGrey(text: 'EUR')],
              )
            ],
          ),
          verticalGap(60),
          TopicLoaderButton(
            btnText: 'Pay',
            onTap: () async {},
            color: TopicColor.primary,
          )
        ],
      ),
    );
  }
}

class BobbleMsgContainer extends StatelessWidget {
  const BobbleMsgContainer({
    super.key,
    required this.location,
    required this.contact,
    required this.sendme,
    required this.img,
    required this.replyImgUrl,
    required this.docs,
    required this.docsImg,
    required this.time,
    required this.text,
    required this.video,
    required this.reply,
    required this.showImg,
    required this.showText,
    required this.imgReply,
    required this.payment,
  });

  final bool? location;
  final bool? contact;
  final bool? video;
  final bool? reply;
  final bool? showImg;
  final bool? showText;
  final bool? imgReply;
  final bool sendme;
  final String? img;
  final String? replyImgUrl;
  final bool? docs;
  final bool? docsImg;
  final String? time;
  final String? text;
  final String? payment;

  @override
  Widget build(BuildContext context) {
    return Container(
      //   color: Colors.red,
      child: Column(
        children: [
          location!
              ? Location_chat_Msg(
                  img: img!,
                )
              : const SizedBox.shrink(),
          contact!
              ? Contact_Chat_Msg(
                  sendme: sendme,
                  img: img!,
                  text: text!,
                )
              : const SizedBox.shrink(),
          video! ? const VideoContainer() : const SizedBox.shrink(),

          showImg!
              ? ImgOneContainer(
                  img: img,
                )
              : const SizedBox.shrink(),
          imgReply!
              ? Container(
                  width: 220,
                  decoration: BoxDecoration(
                      color: sendme ? TopicColor.sender2 : TopicColor.reciver1,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(11),
                      )),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 10),
                      child: Column(
                        children: [
                          GeneralTextPrimary(
                            text: sendme ? '@joybbright94' : 'Me',
                            size: 12,
                          ),
                          verticalGap(5),
                          Image.asset(
                            replyImgUrl!,
                            //width: 190,
                          ),
                        ],
                      )))
              : const SizedBox.shrink(),
          reply!
              ? Container(
                  // height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                      color: sendme ? TopicColor.sender2 : TopicColor.reciver1,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(11),
                      )),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 15),
                      child: Column(
                        children: [
                          GeneralTextPrimary(
                            text: sendme ? '@joybbright94' : 'Me',
                            size: 12,
                          ),
                          const GeneralTextGrey(
                              size: 12,
                              text:
                                  'Duis volutpat consectetur libero, et dignissim')
                        ],
                      )))
              : const SizedBox.shrink(),

          docs!
              ? Column(
                  children: [
                    docsImg!
                        ? ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(11)),
                            child: Image.asset(
                              img!,
                              width: 220,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          )
                        : const SizedBox.shrink(),
                    Container(
                        height: 50,
                        width: 220,
                        decoration: BoxDecoration(
                            color: sendme
                                ? TopicColor.sender2
                                : TopicColor.reciver1,
                            borderRadius: BorderRadius.vertical(
                              top: docsImg!
                                  ? const Radius.circular(0)
                                  : const Radius.circular(11),
                            )),
                        child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.description_outlined,
                                  color: Colors.white,
                                ),
                                horizontalGap(10),
                                Column(
                                  children: [
                                    GeneralTextwhite(text: text!),
                                    const GeneralTextGrey(text: '54.2 MB - pdf')
                                  ],
                                )
                              ],
                            ))),
                  ],
                )
              : const SizedBox.shrink(),

          Container(
            width: 220,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  sendme ? TopicColor.sender2 : TopicColor.reciver1,
                  sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: (img != null && img!.isNotEmpty) ||
                      video! ||
                      docs! ||
                      location! ||
                      contact! ||
                      reply! ||
                      imgReply!
                  ? const BorderRadius.only(
                      bottomLeft: Radius.circular(11),
                      bottomRight: Radius.circular(11),
                    )
                  : BorderRadius.circular(11),
            ),
            child: Padding(
              padding: sendme
                  ? EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10.0,
                      bottom: time!.isEmpty ? 10.0 : 5.0,
                    )
                  : EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10.0,
                      bottom: time!.isEmpty ? 10.0 : 5.0,
                    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  showText!
                      ? Text(
                          text ?? '',
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        )
                      : const SizedBox.shrink(),
                  time!.isNotEmpty
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            (payment != null && payment!.isNotEmpty) && sendme
                                ? Row(
                                    children: [
                                      TextGreen12(text: payment!),
                                      horizontalGap(5),
                                      Image.asset(
                                        'assets/images/bag_green.png',
                                        width: 14,
                                        height: 12,
                                      )
                                    ],
                                  )
                                : const SizedBox.shrink(),
                            horizontalGap(10),
                            Text(
                              time!,
                              style: const TextStyle(
                                fontSize: 12,
                                color: TopicColor.lightGrey,
                              ),
                            ),
                            sendme
                                ? Row(
                                    children: [
                                      horizontalGap(5),
                                      Image.asset(
                                        'assets/images/bluetick.png',
                                        width: 17,
                                        height: 9,
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(),
                          ],
                        )
                      : const SizedBox.shrink(),
                  (payment != null && payment!.isNotEmpty) && sendme == false
                      ? Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            height: 35,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: TopicColor.bgGreen,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: SimpleWhitetextBold(
                                    text: 'Reply for ${payment}')),
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
            ),
          )
          // : SizedBox.shrink(),
        ],
      ),
    );
  }
}

class Contact_Chat_Msg extends StatelessWidget {
  const Contact_Chat_Msg(
      {super.key, required this.sendme, required this.img, required this.text});

  final bool sendme;
  final String img;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image.asset(
                img,
                width: 220,
                height: 111,
              ),
              Container(
                width: 220,
                height: 25,
                color: sendme
                    ? TopicColor.sender1.withOpacity(0.9)
                    : TopicColor.reciver2.withOpacity(0.9),
                child: GeneralTextwhite(
                  align: MainAxisAlignment.center,
                  text: text,
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 109,
                color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                child: const Icon(
                  Icons.mail_outline_outlined,
                  color: TopicColor.white,
                  size: 25,
                ),
              ),
              Container(
                height: 50,
                width: 1,
                color: sendme ? TopicColor.sender2 : TopicColor.reciver1,
              ),
              Container(
                width: 109,
                height: 50,
                color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                child: const Icon(
                  Icons.navigate_next_rounded,
                  color: TopicColor.white,
                  size: 35,
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            width: 220,
            color: sendme ? TopicColor.sender2 : TopicColor.reciver1,
          )
        ],
      ),
    );
  }
}

class Location_chat_Msg extends StatelessWidget {
  const Location_chat_Msg({
    super.key,
    required this.img,
  });
  final String img;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: TopicColor.bgchatGrey,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            context: context,
            builder: (BuildContext builder) {
              return const Padding(
                padding: EdgeInsets.all(20.0),
                child: Select_Maps_ModalSheet(),
              );
            });
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            img,
            width: 220,
          ),
          Image.asset(
            'assets/images/dp2.png',
            width: 35,
            height: 35,
          ),
        ],
      ),
    );
  }
}

class Select_Maps_ModalSheet extends StatelessWidget {
  const Select_Maps_ModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GeneralTextwhite(text: 'John Travis’ location'),
            const crossIcon(
              size: 35,
            ),
          ],
        ),
        verticalGap(35),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Input_Field_icon(
              text: 'Apple Maps',
              dp: 'apple_map.png',
            ),
            Input_Field_icon(
              text: 'Google Maps',
              dp: 'google_map.png',
            ),
            Input_Field_icon(
              text: 'Waze',
              dp: 'waze_map.png',
            ),
          ],
        ),
        verticalGap(30),
        Row(
          children: [
            horizontalGap(15),
            const Input_Field_icon(
              text: 'Uber',
              dp: 'uber_map.png',
            ),
          ],
        )
      ],
    );
  }
}

class BobbleImg extends StatelessWidget {
  const BobbleImg({
    super.key,
    required this.imgLengthGreaterthen1,
    required this.sendme,
    required this.time,
  });
  final double imgLengthGreaterthen1;
  final bool sendme;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: sendme ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Column(
          children: [
            SizedBox(
              child: imgLengthGreaterthen1 == 2
                  ? ImgTwoContainer(sendme: sendme)
                  : imgLengthGreaterthen1 == 3
                      ? ImgThreeContainer(sendme: sendme)
                      : imgLengthGreaterthen1 == 4
                          ? ImgFourContainer(sendme: sendme)
                          : imgLengthGreaterthen1 == 5
                              ? ImgFiveContainer(sendme: sendme)
                              : imgLengthGreaterthen1 == 6
                                  ? ImgSixContainer(sendme: sendme)
                                  : imgLengthGreaterthen1 == 7
                                      ? ImgSevenContainer(sendme: sendme)
                                      : ImgGreaterSevenContainer(
                                          sendme: sendme),
            ),
            Container(
              //height: 15,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(11),
                ),
                gradient: LinearGradient(
                  colors: [
                    sendme ? TopicColor.sender2 : TopicColor.reciver1,
                    sendme ? TopicColor.sender1 : TopicColor.reciver2,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: time.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            time,
                            style: const TextStyle(
                              fontSize: 12,
                              color: TopicColor.lightGrey,
                            ),
                          ),
                          sendme
                              ? Row(
                                  children: [
                                    horizontalGap(5),
                                    Image.asset(
                                      'assets/images/bluetick.png',
                                      width: 17,
                                      height: 9,
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
            )
          ],
        )),
      ),
    );
  }
}

class EmojiText extends StatelessWidget {
  const EmojiText({
    super.key,
    required this.emoji,
  });
  final String emoji;
  @override
  Widget build(BuildContext context) {
    return Text(
      emoji,
      style: const TextStyle(fontSize: 20),
    );
  }
}

class infoMsgRow extends StatelessWidget {
  const infoMsgRow({
    super.key,
    required this.img,
    required this.status,
    this.day = '',
    this.time = '',
    this.height = 17.0,
    this.width = 22.0,
  });
  final String img;
  final String status;
  final String? day;
  final String? time;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              img,
              width: width,
              height: height,
            ),
            horizontalGap(10),
            GeneralTextwhite(
                text: status,
                icon: const SizedBox(
                  height: 1,
                )),
          ],
        ),
        Row(
          children: [
            lightGreytext14(text: day!),
            horizontalGap(10),
            GeneralTextwhite(
                text: time!,
                icon: const SizedBox(
                  height: 1,
                )),
          ],
        )
      ],
    );
  }
}

class msgSenderId extends StatelessWidget {
  const msgSenderId({
    super.key,
    required this.text,
    required this.dp,
    this.color = TopicColor.lightpurple,
  });
  final String text;
  final String dp;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          dp,
          width: 20,
          height: 20,
        ),
        horizontalGap(5),
        GeneralTextwhite(
            text: text,
            color: color,
            icon: const SizedBox(
              height: 1,
            )),
      ],
    );
  }
}
