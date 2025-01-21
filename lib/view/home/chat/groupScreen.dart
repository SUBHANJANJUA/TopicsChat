import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/TAbSettingView.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';

import 'package:topics/view/home/chat/groupProfileView.dart';

import 'package:topics/view/home/home_view.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/boubleMsg.dart';
import 'package:topics/widget/Common_Widgets/input_chat_field.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class GroupScreenView extends StatelessWidget {
  GroupScreenView({super.key});
  final ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        backgroundColor: TopicColor.reciver1,
        leading: GestureDetector(
            onTap: () => Get.offAll(const HomeView()),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: TopicColor.white,
            )),
        actions: [const appBarActionIcon()],
        titleSpacing: 0.0,
        title: GestureDetector(
            onTap: () {
              Get.to(() => Groupprofileview());
            },
            child: const GroupAppBarTitle()),
      ),
      body: Obx(
        () => Column(
          children: [
            controller.groupSearch.value
                ? Container(
                    // height: 52,
                    color: TopicColor.reciver1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(
                                      color: TopicColor.lightGrey,
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.search,
                                        color: TopicColor.lightGrey,
                                      ),
                                      Expanded(
                                          child: TextFormField(
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        decoration: const InputDecoration(
                                          isDense: true,
                                          border: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          contentPadding: EdgeInsets.zero,
                                        ),
                                      )),
                                      Container(
                                        width: 37,
                                        height: 23,
                                        decoration: BoxDecoration(
                                          color: TopicColor.primary,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: GeneralTextwhite(
                                          align: MainAxisAlignment.center,
                                          text: '24',
                                          weight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          horizontalGap(10),
                          GestureDetector(
                            onTap: () {
                              controller.toggleGroupSearch(false);
                            },
                            child: const Icon(
                              Icons.close,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            const AppBarTabView(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 10.0),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          verticalGap(13),
                          BobbleMsg(
                            text:
                                'Nullam euismod mauris sit amet vehicula dictum!! 😎',
                            sendme: true,
                            time: '22:23',
                            group: true,
                          ),
                          verticalGap(10),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: msgSenderId(
                              text: 'Carlos Gomes',
                              dp: 'assets/images/dp1.png',
                              color: TopicColor.brown,
                            ),
                          ),
                          BobbleMsg(
                            text:
                                'Duis volutpat consectetur libero, et dignissim',
                            time: '22:24',
                            sendme: false,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: msgSenderId(
                              text: 'Carlos Gomes',
                              dp: 'assets/images/dp2.png',
                              color: TopicColor.lightpurple,
                            ),
                          ),
                          BobbleMsg(
                            text:
                                'Duis volutpat consectetur libero, et dignissim',
                            time: '22:24',
                            sendme: false,
                          ),
                          verticalGap(10),
                          BobbleMsg(
                            text:
                                'Nullam euismod mauris sit amet vehicula dictum!! 😎',
                            sendme: true,
                            time: '22:23',
                            group: true,
                          ),
                          verticalGap(10),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: msgSenderId(
                              text: 'Carlos Gomes',
                              dp: 'assets/images/dp1.png',
                              color: TopicColor.brown,
                            ),
                          ),
                          BobbleMsg(
                            text:
                                'Duis volutpat consectetur libero, et dignissim',
                            time: '22:24',
                            sendme: false,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: msgSenderId(
                              text: 'Carlos Gomes',
                              dp: 'assets/images/dp2.png',
                              color: TopicColor.lightpurple,
                            ),
                          ),
                          BobbleMsg(
                            text:
                                'Duis volutpat consectetur libero, et dignissim',
                            time: '22:24',
                            sendme: false,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: controller.groupSearch.value
                          ? Column(
                              children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: TopicColor.reciver2.withOpacity(0.8),
                                  ),
                                  child: Icon(
                                    Icons.keyboard_arrow_up_rounded,
                                    size: 50,
                                    color: TopicColor.white,
                                  ),
                                ),
                                verticalGap(10),
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: TopicColor.reciver1.withOpacity(0.8),
                                  ),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 50,
                                    color: TopicColor.white,
                                  ),
                                )
                              ],
                            )
                          : SizedBox.shrink(),
                    )
                  ],
                ),
              ),
            ),
            inputChatField()
          ],
        ),
      ),
    );
  }
}

class AppBarTabView extends StatelessWidget {
  const AppBarTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      color: Colors.grey.withOpacity(0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: TopicColor.primary,
                ),
              ),
              ProfileText(text: 'general'),
            ],
          ),
          Row(
            children: [
              ProfileText(text: 'expenses'),
              horizontalGap(5),
              Image.asset(
                'assets/images/mute_grey.png',
                width: 15,
                height: 15,
              )
            ],
          ),
          ProfileText(
            text: 'gossip',
            lock: true,
          ),
          ProfileText(text: 'travel'),
          GestureDetector(
            onTap: () => Get.to(() => TabSettingView(
                  addTab: true,
                )),
            child: Icon(
              Icons.add_circle_outline,
              color: TopicColor.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
