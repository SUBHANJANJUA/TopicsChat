import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/auth/auth_main.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/AccountScreens/changePassword.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Account'),
        titleSpacing: 0.0,
      ),
      body: Column(
        children: [
          GestureDetector(
              onTap: () => Get.to(() => ChangePasswordView()),
              child: GeneralTextwhite3(text: 'Change password')),
          horizontalDivider(),
          GeneralTextwhite3(text: 'Set up Two-Steps verification'),
          horizontalDivider(),
          GeneralTextwhite3(text: 'Blocked users'),
          horizontalDivider(),
          GeneralTextDanger2(
              onTap: () => Get.offAll(AuthMainScreen()), text: 'Delete account')
        ],
      ),
    ));
  }
}
