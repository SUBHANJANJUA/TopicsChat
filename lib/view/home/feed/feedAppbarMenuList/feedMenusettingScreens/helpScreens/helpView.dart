import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/helpScreens/ContactUsView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/helpScreens/FAQView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/helpScreens/helpCenterView.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Help'),
        titleSpacing: 0.0,
      ),
      backgroundColor: TopicColor.black,
      body: Column(
        children: [
          GeneralTextwhite3(
            onTap: () => Get.to(() => HelpCenterView()),
            text: 'Help center',
          ),
          horizontalDivider(),
          GeneralTextwhite3(
              onTap: () => Get.to(() => ContactUsView()), text: 'Contact us'),
          horizontalDivider(),
          GeneralTextwhite3(text: 'Terms and Privacy Policy'),
          horizontalDivider(),
          GeneralTextwhite3(text: 'Licenses'),
          horizontalDivider(),
          GeneralTextwhite3(onTap: () => Get.to(() => FAQView()), text: 'FAQ'),
        ],
      ),
    ));
  }
}
