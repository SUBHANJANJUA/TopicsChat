import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/call/callingView.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class ListTileCallView extends StatelessWidget {
  const ListTileCallView({
    super.key,
    this.dp,
    required this.title,
    this.subtitle,
    this.subIcon,
    this.trailing,
    this.trailingIcon,
  });
  final String? dp;
  final String title;
  final String? subtitle;
  final IconData? subIcon;
  final String? trailing;
  final IconData? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          Image.asset(
            dp!,
            width: 35,
            height: 35,
          ),
          horizontalGap(10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: subtitle == "Missed" ? Colors.red : Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                verticalGap(5),
                Row(
                  children: [
                    Icon(
                      subIcon,
                      color: TopicColor.lightGrey,
                      size: 20,
                    ),
                    horizontalGap(5),
                    Text(
                      subtitle!,
                      style: TextStyle(
                          color: TopicColor.lightGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                trailing!,
                style: TextStyle(
                    color: TopicColor.lightGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              horizontalGap(5),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: TopicColor.bgchatGrey,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      context: context,
                      builder: (BuildContext builder) {
                        return const CallHistoryModalSheet();
                      });
                },
                child: Icon(
                  trailingIcon,
                  color: TopicColor.lightGrey,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CallHistoryModalSheet extends StatelessWidget {
  const CallHistoryModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.95,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Align(alignment: Alignment.topRight, child: crossIcon()),
              verticalGap(25),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/gallery10.png',
                  height: 100,
                  width: 100,
                ),
              ),
              verticalGap(25),
              const SimpleWhitetextBold(
                text: 'Amelie Smith',
                size: 26,
              ),
              verticalGap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => CallingView()),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: TopicColor.lightGrey2),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('assets/images/call_unselected.png'),
                      ),
                    ),
                  ),
                  horizontalGap(15),
                  GestureDetector(
                    onTap: () => Get.to(() => CallingView(
                          videoCall: true,
                        )),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: TopicColor.lightGrey2),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset('assets/images/camera2.png'),
                      ),
                    ),
                  ),
                ],
              ),
              verticalGap(30),
              Container(
                width: double.infinity,
                //height: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: TopicColor.lightGrey2),
                    borderRadius: BorderRadius.circular(11)),
                child: Column(
                  children: [
                    const CallHistoryListContainer(
                      day: 'Today',
                      time: '09:01',
                      status: 'Incoming',
                      duration: '3 minutes',
                    ),
                    SizedBox(
                      height: 2,
                      child: Divider(
                        color: TopicColor.lightGrey,
                      ),
                    ),
                    const CallHistoryListContainer(
                      day: '04/09/2023',
                      time: '23:44',
                      status: 'Missed',
                    ),
                  ],
                ),
              ),
              verticalGap(90),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: GeneralTextPrimary(
                  text: 'Send message',
                  icon: Icon(
                    Icons.chat_outlined,
                    color: TopicColor.primary,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
                child: Divider(
                  color: TopicColor.lightGrey2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: GeneralTextPrimary(
                  text: 'Share contact',
                  icon: Icon(
                    Icons.share_outlined,
                    color: TopicColor.primary,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
                child: Divider(
                  color: TopicColor.lightGrey2,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: GeneralTextDanger(text: 'Block contact'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CallHistoryListContainer extends StatelessWidget {
  const CallHistoryListContainer({
    super.key,
    required this.day,
    required this.time,
    this.status = '',
    this.duration = '',
  });
  final String day;
  final String time;
  final String? status;
  final String? duration;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GeneralTextwhite(
                text: day,
                weight: FontWeight.w600,
              ),
              verticalGap(5),
              GeneralTextGrey(
                text: time,
                size: 12,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GeneralTextDanger(
                  text: status!,
                  color: status == "Missed"
                      ? TopicColor.lightOrange
                      : TopicColor.sender1,
                  icon: Icon(
                    Icons.call,
                    color: status == "Missed"
                        ? TopicColor.lightOrange
                        : TopicColor.sender1,
                    size: 20,
                  )),
              verticalGap(5),
              duration == ''
                  ? const SizedBox.shrink()
                  : GeneralTextGrey(
                      text: duration!,
                      size: 12,
                    )
            ],
          )
        ],
      ),
    );
  }
}
