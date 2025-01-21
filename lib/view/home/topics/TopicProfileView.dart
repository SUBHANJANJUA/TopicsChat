import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/home/topics/JoinTopicChat.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class Topicprofileview extends StatelessWidget {
  Topicprofileview({
    super.key,
    required this.callback,
  });
  final Map<String, dynamic> callback;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 245,
                width: double.infinity,
                child: Image.asset(
                  callback['dp']!,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Column(
                children: [
                  verticalGap(50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        backIconButtonLeading(),
                        Icon(
                          Icons.share,
                          color: TopicColor.white,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SimpleWhitetextBold(
                            text: callback['title']!,
                            size: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timelapse_outlined,
                                color: TopicColor.primary,
                              ),
                              horizontalGap(5),
                              GeneralTextPrimary(text: callback['time']!)
                            ],
                          )
                        ],
                      ),
                      GeneralTextGrey(
                          text: 'Created by ${callback['creater']!}'),
                      verticalGap(15),
                      SimpleWhitetextBold(
                        text:
                            'One month of Israel’s war: What’s happening to Palestinians outside Gaza?',
                        weight: FontWeight.w400,
                      ),
                      SimpleWhitetextBold(
                        text:
                            'The past month saw escalating Israeli violence against Palestinians in the occupied West Bank, in Jerusalem and inside Israel.',
                        weight: FontWeight.w400,
                      ),
                      verticalGap(40),
                      Row(
                        children: [
                          selectedContactGroupContainer(
                            name: 'politics',
                            color: TopicColor.bgchatGrey,
                          ),
                          horizontalGap(10),
                          selectedContactGroupContainer(
                            name: 'world',
                            color: TopicColor.bgchatGrey,
                          ),
                          horizontalGap(10),
                          selectedContactGroupContainer(
                            name: 'war',
                            color: TopicColor.bgchatGrey,
                          ),
                          horizontalGap(10),
                        ],
                      ),
                      verticalGap(20),
                      GeneralTextwhite(
                        text: callback['member']!,
                        icon: Icon(
                          Icons.person,
                          color: TopicColor.white,
                        ),
                      ),
                      verticalGap(5),
                      GeneralTextGrey(
                        text: '${callback['creater']!} and @c.gomes',
                        size: 12,
                      ),
                      // Spacer(),
                    ],
                  ),
                  TopicLoaderButton(
                    btnText: 'Join topic',
                    onTap: () async {
                      Get.to(() => JoinTopicChatView(callback: callback));
                    },
                    color: TopicColor.primary,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
