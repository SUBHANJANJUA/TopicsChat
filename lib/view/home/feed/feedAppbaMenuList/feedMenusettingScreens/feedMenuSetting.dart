import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenuBottomModelSheets/ShareProfileModelSheet.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/AccountScreens/AccountView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/EditProfilteView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/NoficationSettingScreens/NotificationSetting.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/helpScreens/helpView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/paidCallsView/PaidCallsView.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/paymentsView/FeedPaymentView.dart';
import 'package:topics/view/home/feed/feedController/feedController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';
import 'package:topics/widget/feed_widgets/feedMenuSettingProfilteContainer.dart';

class FeedMenusetting extends StatelessWidget {
  FeedMenusetting({super.key});
  final FeedController controller = Get.put(FeedController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Setttings'),
        titleSpacing: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalGap(10),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: TopicColor.bgchatGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    )),
                    context: context,
                    builder: (BuildContext builder) {
                      return ShareProfilteModalSheet();
                    });
              },
              child: FeedMenuSettingProfilteContainer(
                text: 'Henry Lopez',
                dp: 'assets/images/dp6.png',
              ),
            ),
            verticalGap(10),
            GeneralTextwhite3(
              text: 'Language',
              icon: Icon(
                Icons.language,
                color: TopicColor.white,
              ),
              actionIcon: GeneralTextwhite(text: 'English'),
            ),
            horizontalDivider(),
            Obx(
              () => GeneralTextwhite3(
                text: 'Translation',
                icon: SvgPicture.asset(
                  'assets/images/translation_icon.svg',
                  width: 25,
                  height: 20,
                ),
                actionIcon: SizedBox(
                  height: 10,
                  width: 40,
                  child: Switch(
                    value: controller.isSwitched1.value,
                    onChanged: (value) {
                      controller.toggleSwitch(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            horizontalDivider(),
            GeneralTextwhite3(
              onTap: () => Get.to(() => AccountView()),
              text: 'Account',
              icon: Icon(
                Icons.person_outline_outlined,
                color: TopicColor.white,
              ),
              actionIcon: Icon(
                Icons.arrow_forward_ios,
                color: TopicColor.white,
                size: 15,
              ),
            ),
            horizontalDivider(),
            GeneralTextwhite3(
              onTap: () => Get.to(() => EditProfileView()),
              text: 'Edit profile',
              icon: Icon(
                Icons.edit_outlined,
                color: TopicColor.white,
              ),
              actionIcon: Icon(
                Icons.arrow_forward_ios,
                color: TopicColor.white,
                size: 15,
              ),
            ),
            horizontalDivider(),
            GeneralTextwhite3(
              onTap: () => Get.to(() => NoitificationSettingView()),
              text: 'Notifications',
              icon: Icon(
                Icons.notifications_none_rounded,
                color: TopicColor.white,
              ),
              actionIcon: Icon(
                Icons.arrow_forward_ios,
                color: TopicColor.white,
                size: 15,
              ),
            ),
            horizontalDivider(),
            GeneralTextwhite3(
              onTap: () => Get.to(() => Feedpaymentview()),
              text: 'Payments',
              icon: Image.asset(
                'assets/images/bag.png',
                width: 20,
                // height: 12,
              ),
              actionIcon: Icon(
                Icons.arrow_forward_ios,
                color: TopicColor.white,
                size: 15,
              ),
            ),
            horizontalDivider(),
            GeneralTextwhite3(
              onTap: () => Get.to(() => Paidcallsview()),
              text: 'Paid calls',
              icon: SvgPicture.asset('assets/images/call_paid.svg'),
              actionIcon: Icon(
                Icons.arrow_forward_ios,
                color: TopicColor.white,
                size: 15,
              ),
            ),
            horizontalDivider(),
            GestureDetector(
              onTap: () => Get.to(() => HelpView()),
              child: GeneralTextwhite3(
                text: 'Help',
                icon: SvgPicture.asset('assets/images/help_icon.svg'),
                actionIcon: Icon(
                  Icons.arrow_forward_ios,
                  color: TopicColor.white,
                  size: 15,
                ),
              ),
            ),
            horizontalDivider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: GeneralTextPrimary(text: 'Connect Wallet'),
            )
          ],
        ),
      ),
    ));
  }
}
