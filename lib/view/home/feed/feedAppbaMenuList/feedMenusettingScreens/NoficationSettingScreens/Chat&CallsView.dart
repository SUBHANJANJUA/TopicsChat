import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedController/FeedSwitchButtonController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class ChatCallsView extends StatelessWidget {
  ChatCallsView({super.key});
  final FeedSwitchButtonControoler swichtcontroller =
      Get.put(FeedSwitchButtonControoler());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Chat & calls'),
        titleSpacing: 0.0,
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SimpleGreytextBold2(
                text: 'Chat',
                size: 16,
              ),
              TitileSwitchContainer(
                  title: 'Message requests',
                  subtitle: '@username wants to chat with you',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched3.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch3(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
              horizontalDivider(),
              TitileSwitchContainer(
                  title: 'Group requests',
                  subtitle: '@username wants to add you to the group X',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched4.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch4(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
              horizontalDivider(),
              TitileSwitchContainer(
                  title: 'Direct messages',
                  subtitle: '@username: ... text ...',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched5.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch5(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
              horizontalDivider(),
              TitileSwitchContainer(
                  title: 'Group messages',
                  subtitle: '@username: ... text ...',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched6.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch6(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
              horizontalDivider(),
              TitileSwitchContainer(
                  title: 'Private mode',
                  subtitle:
                      'Anonymous chat. No one will know the messages have been read',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched7.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch7(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
              // horizontalDivider(),
              verticalGap(30),
              SimpleGreytextBold2(
                text: 'Calls',
                size: 16,
              ),
              //  horizontalDivider(),
              TitileSwitchContainer(
                  title: 'Group voice call',
                  subtitle: 'Group name - Join voice call',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched8.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch8(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
              horizontalDivider(),
              TitileSwitchContainer(
                  title: 'Group video call',
                  subtitle: 'Group name - Join video call',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched9.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch9(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
              horizontalDivider(),
            ],
          ),
        ),
      ),
    ));
  }
}

class TitileSwitchContainer extends StatelessWidget {
  const TitileSwitchContainer({
    super.key,
    required this.title,
    this.subtitle = '',
    required this.actionWidget,
  });
  final String title;
  final String? subtitle;
  final Widget actionWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SimpleWhitetextBold(text: title),
              subtitle == ''
                  ? SizedBox.shrink()
                  : GeneralTextGreyitelic(text: subtitle!)
            ],
          )),
          SizedBox(
            height: 20,
            width: 30,
            child: actionWidget,
          )
        ],
      ),
    );
  }
}
