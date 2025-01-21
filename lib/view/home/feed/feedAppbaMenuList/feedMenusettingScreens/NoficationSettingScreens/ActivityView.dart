import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/NoficationSettingScreens/Chat&CallsView.dart';
import 'package:topics/view/home/feed/feedController/FeedSwitchButtonController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';

class ActivityView extends StatelessWidget {
  ActivityView({super.key});
  final FeedSwitchButtonControoler swichtcontroller =
      Get.put(FeedSwitchButtonControoler());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Activity'),
        titleSpacing: 0.0,
      ),
      body: Obx(
        () => Column(
          children: [
            TitileSwitchContainer(
                title: 'Trending channels',
                actionWidget: Switch(
                  value: swichtcontroller.isSwitched10.value,
                  onChanged: (value) {
                    swichtcontroller.toggleSwitch10(value);
                  },
                  activeColor: TopicColor.primary,
                  inactiveThumbColor: Colors.white,
                  activeTrackColor: TopicColor.white,
                  inactiveTrackColor: Colors.grey.shade400,
                )),
            horizontalDivider(),
            TitileSwitchContainer(
                title: 'Trending threads',
                actionWidget: Switch(
                  value: swichtcontroller.isSwitched11.value,
                  onChanged: (value) {
                    swichtcontroller.toggleSwitch11(value);
                  },
                  activeColor: TopicColor.primary,
                  inactiveThumbColor: Colors.white,
                  activeTrackColor: TopicColor.white,
                  inactiveTrackColor: Colors.grey.shade400,
                )),
            horizontalDivider(),
            TitileSwitchContainer(
                title: 'Suggested threads',
                actionWidget: Switch(
                  value: swichtcontroller.isSwitched12.value,
                  onChanged: (value) {
                    swichtcontroller.toggleSwitch12(value);
                  },
                  activeColor: TopicColor.primary,
                  inactiveThumbColor: Colors.white,
                  activeTrackColor: TopicColor.white,
                  inactiveTrackColor: Colors.grey.shade400,
                )),
            horizontalDivider(),
            TitileSwitchContainer(
                title: 'Suggested topics',
                actionWidget: Switch(
                  value: swichtcontroller.isSwitched13.value,
                  onChanged: (value) {
                    swichtcontroller.toggleSwitch13(value);
                  },
                  activeColor: TopicColor.primary,
                  inactiveThumbColor: Colors.white,
                  activeTrackColor: TopicColor.white,
                  inactiveTrackColor: Colors.grey.shade400,
                )),
            horizontalDivider(),
            TitileSwitchContainer(
                title: 'People you might know',
                actionWidget: Switch(
                  value: swichtcontroller.isSwitched14.value,
                  onChanged: (value) {
                    swichtcontroller.toggleSwitch14(value);
                  },
                  activeColor: TopicColor.primary,
                  inactiveThumbColor: Colors.white,
                  activeTrackColor: TopicColor.white,
                  inactiveTrackColor: Colors.grey.shade400,
                )),
          ],
        ),
      ),
    ));
  }
}
