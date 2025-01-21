import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenuBottomModelSheets/ShareProfileModelSheet.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenuBottomModelSheets/InviteFriendsBottomModelSheets.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/feedMenuSetting.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/feed_widgets/feedmenueContainer.dart';

class FeedMenuView extends StatelessWidget {
  const FeedMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        backgroundColor: TopicColor.lightGrey2,
        leading: backIconButtonLeading(),
        titleSpacing: 0,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/dp2.png',
                width: 30,
              ),
            ),
            horizontalGap(10),
            SimpleWhitetextBold(
              text: 'Henry Lopez',
              size: 20,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: TopicColor.bgchatGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.vertical(
                      top: Radius.circular(30),
                    )),
                    context: context,
                    builder: (BuildContext builder) {
                      return ShareProfilteModalSheet();
                    });
              },
              child: Image.asset(
                'assets/images/qr_white.png',
                width: 33,
                height: 33,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Invite friends
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: TopicColor.bgchatGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        context: context,
                        builder: (BuildContext builder) {
                          return InviteFriendsModalSheet();
                        });
                  },
                  child: FeedMenuContainer(
                    icon: Icon(
                      Icons.person_add_alt,
                      color: TopicColor.white,
                    ),
                    text: 'Invite friends',
                  ),
                ),
                FeedMenuContainer(
                  icon: SvgPicture.asset(
                    'assets/images/buy_icon.svg',
                    width: 20,
                    height: 20,
                  ),
                  text: 'Buy/Sell usernames',
                ),
                FeedMenuContainer(
                  icon: SvgPicture.asset(
                    'assets/images/topic_icon.svg',
                    width: 20,
                    height: 20,
                  ),
                  text: 'Topics Premium',
                ),
              ],
            ),
            verticalGap(context.width * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeedMenuContainer(
                    text: 'Payments',
                    icon: Image.asset(
                      'assets/images/bag.png',
                      width: 20,
                      height: 20,
                    )),
                //Setting view
                GestureDetector(
                  onTap: () => Get.to(() => FeedMenusetting()),
                  child: FeedMenuContainer(
                      text: 'Settings',
                      icon: Icon(
                        Icons.settings_outlined,
                        color: TopicColor.white,
                      )),
                ),
                FeedMenuContainer(
                    text: 'Suggestions',
                    icon: SvgPicture.asset(
                      'assets/images/suggestion_icon.svg',
                      width: 20,
                      height: 20,
                    ))
              ],
            ),
            verticalGap(context.width * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeedMenuContainer(
                    text: 'Crypto Wallet',
                    icon: SvgPicture.asset(
                      'assets/images/crypto_icon.svg',
                      width: 20,
                      height: 20,
                    )),
                FeedMenuContainer(
                    text: 'Request Badge',
                    icon: SvgPicture.asset(
                      'assets/images/request_icon.svg',
                      width: 20,
                      height: 20,
                    )),
                FeedMenuContainer(
                    text: 'Rewards',
                    icon: SvgPicture.asset(
                      'assets/images/reward_icon.svg',
                      width: 20,
                      height: 20,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
