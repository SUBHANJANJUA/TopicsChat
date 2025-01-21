import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/helpScreens/VoiceMessagesView.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';

import '../../../../../../widget/Common_Widgets/SimpleTextBold.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Help center'),
        titleSpacing: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalGap(30),
          SimpleGreytextBold2(
            text: 'Chat',
            size: 16,
          ),
          GeneralTextwhite2(
            text: 'Individual and group chats',
            actionIcon: true,
          ),
          horizontalDivider(),
          GeneralTextwhite2(
            text: 'Notifications',
            actionIcon: true,
          ),
          horizontalDivider(),
          GeneralTextwhite2(
            onTap: () => Get.to(() => VoiceMessageView()),
            text: 'Voice messages',
            actionIcon: true,
          ),
          horizontalDivider(),
          verticalGap(30),
          SimpleGreytextBold2(
            text: 'Voice and video calls',
            size: 16,
          ),
          GeneralTextwhite2(
            text: 'Video calls',
            actionIcon: true,
          ),
          horizontalDivider(),
          GeneralTextwhite2(
            text: 'Voice calls',
            actionIcon: true,
          ),
          horizontalDivider(),
          verticalGap(30),
          SimpleGreytextBold2(
            text: 'Communities',
            size: 16,
          ),
          GeneralTextwhite2(
            text: 'Admin',
            actionIcon: true,
          ),
          horizontalDivider(),
          GeneralTextwhite2(
            text: 'Members',
            actionIcon: true,
          ),
          horizontalDivider(),
          GeneralTextwhite2(
            text: 'Privacy, safety and security',
            actionIcon: true,
          ),
          horizontalDivider(),
        ],
      ),
    ));
  }
}
