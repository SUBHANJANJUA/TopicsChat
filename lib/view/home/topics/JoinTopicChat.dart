import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/boubleMsg.dart';
import 'package:topics/widget/Common_Widgets/input_chat_field.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';

class JoinTopicChatView extends StatelessWidget {
  JoinTopicChatView({
    super.key,
    required this.callback,
  });
  final Map<String, dynamic> callback;
  final ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(
          size: 20,
          text: callback['title']!,
        ),
        titleSpacing: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GeneralTextwhite(
              text: '${callback['time']!}',
              icon: Icon(
                Icons.timelapse_outlined,
                color: TopicColor.white,
                size: 20,
              ),
              gap: 0,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('${callback['dp']!}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
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
            //const AppBarTabView(),
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
