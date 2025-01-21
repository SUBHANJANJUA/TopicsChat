import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/NoficationSettingScreens/ActivityView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/NoficationSettingScreens/Chat&CallsView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/NoficationSettingScreens/FromHODLView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/NoficationSettingScreens/NotificationOtherView.dart';
import 'package:topics/view/home/feed/feedController/FeedSwitchButtonController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class NoitificationSettingView extends StatelessWidget {
  NoitificationSettingView({super.key});
  final FeedSwitchButtonControoler swichtcontroller =
      Get.put(FeedSwitchButtonControoler());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Notifications'),
        titleSpacing: 0.0,
      ),
      body: Obx(
        () => Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SimpleWhitetextBold(text: 'Mute all'),
                      GeneralTextGrey(
                          text: 'Suspend notifications temporarily'),
                    ],
                  )),
                  Switch(
                    value: swichtcontroller.isSwitched1.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )
                ],
              ),
            ),
            horizontalDivider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SimpleWhitetextBold(text: 'Quiet mode'),
                      GeneralTextGrey(
                          text:
                              'Mutes notifications during specific hours, for example, at night'),
                    ],
                  )),
                  Switch(
                    value: swichtcontroller.isSwitched2.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch2(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )
                ],
              ),
            ),
            horizontalDivider(),
            GeneralTextwhite2(
              onTap: () => Get.to(() => ChatCallsView()),
              text: 'Chat & calls',
              actionIcon: true,
              weight: FontWeight.w600,
            ),
            horizontalDivider(),
            GeneralTextwhite2(
              onTap: () => Get.to(() => ActivityView()),
              text: 'Activity',
              actionIcon: true,
              weight: FontWeight.w600,
            ),
            horizontalDivider(),
            GeneralTextwhite2(
              text: 'AcRecommendationstivity',
              actionIcon: true,
              weight: FontWeight.w600,
            ),
            horizontalDivider(),
            GeneralTextwhite2(
              onTap: () => Get.to(() => Fromhodlview()),
              text: 'From HODL',
              actionIcon: true,
              weight: FontWeight.w600,
            ),
            horizontalDivider(),
            GeneralTextwhite2(
              onTap: () => Get.to(() => Notificationotherview()),
              text: 'Other',
              actionIcon: true,
              weight: FontWeight.w600,
            ),
          ],
        ),
      ),
    ));
  }
}
