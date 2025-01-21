import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/NoficationSettingScreens/Chat&CallsView.dart';
import 'package:topics/view/home/feed/feedController/FeedSwitchButtonController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';

class Notificationotherview extends StatelessWidget {
  Notificationotherview({super.key});
  final FeedSwitchButtonControoler swichtcontroller =
      Get.put(FeedSwitchButtonControoler());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Others'),
        titleSpacing: 0.0,
      ),
      body: Obx(() => Column(
            children: [
              TitileSwitchContainer(
                  title: 'Screen time',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched19.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch19(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
              horizontalDivider(),
              TitileSwitchContainer(
                  title: 'Activity status',
                  actionWidget: Switch(
                    value: swichtcontroller.isSwitched20.value,
                    onChanged: (value) {
                      swichtcontroller.toggleSwitch20(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )),
            ],
          )),
    ));
  }
}
