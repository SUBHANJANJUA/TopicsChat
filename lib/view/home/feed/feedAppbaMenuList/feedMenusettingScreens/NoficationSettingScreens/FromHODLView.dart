import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/NoficationSettingScreens/Chat&CallsView.dart';
import 'package:topics/view/home/feed/feedController/FeedSwitchButtonController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';

class Fromhodlview extends StatelessWidget {
  Fromhodlview({super.key});
  final FeedSwitchButtonControoler swichtcontroller =
      Get.put(FeedSwitchButtonControoler());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: TopicColor.black,
            appBar: AppBar(
              leading: backIconButtonLeading(),
              title: HeadingTextAppBar(text: 'From HODL'),
              titleSpacing: 0.0,
            ),
            body: Obx(
              () => Column(children: [
                TitileSwitchContainer(
                    title: 'Announcements',
                    actionWidget: Switch(
                      value: swichtcontroller.isSwitched15.value,
                      onChanged: (value) {
                        swichtcontroller.toggleSwitch15(value);
                      },
                      activeColor: TopicColor.primary,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: TopicColor.white,
                      inactiveTrackColor: Colors.grey.shade400,
                    )),
                horizontalDivider(),
                TitileSwitchContainer(
                    title: 'Feedback',
                    actionWidget: Switch(
                      value: swichtcontroller.isSwitched16.value,
                      onChanged: (value) {
                        swichtcontroller.toggleSwitch16(value);
                      },
                      activeColor: TopicColor.primary,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: TopicColor.white,
                      inactiveTrackColor: Colors.grey.shade400,
                    )),
                horizontalDivider(),
                TitileSwitchContainer(
                    title: 'Email notifications',
                    actionWidget: Switch(
                      value: swichtcontroller.isSwitched17.value,
                      onChanged: (value) {
                        swichtcontroller.toggleSwitch17(value);
                      },
                      activeColor: TopicColor.primary,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: TopicColor.white,
                      inactiveTrackColor: Colors.grey.shade400,
                    )),
                horizontalDivider(),
                TitileSwitchContainer(
                    title: 'Support Requests',
                    actionWidget: Switch(
                      value: swichtcontroller.isSwitched18.value,
                      onChanged: (value) {
                        swichtcontroller.toggleSwitch18(value);
                      },
                      activeColor: TopicColor.primary,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: TopicColor.white,
                      inactiveTrackColor: Colors.grey.shade400,
                    )),
              ]),
            )));
  }
}
