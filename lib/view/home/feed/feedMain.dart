import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenuView.dart';
import 'package:topics/view/home/feed/notification.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class FeedMainView extends StatelessWidget {
  const FeedMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Image.asset(
                'assets/images/logo_simple.png',
                width: 36,
                height: 36,
              ),
              horizontalGap(5),
              const HeadingTextAppBar(text: 'Feed')
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Get.to(() => NotificationView()),
                  child: const Icon(
                    Icons.notifications_none,
                    color: TopicColor.white,
                    size: 30,
                  ),
                ),
                horizontalGap(10),
                GestureDetector(
                  onTap: () => Get.to(() => FeedMenuView()),
                  child: const Icon(
                    Icons.menu,
                    color: TopicColor.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalGap(30),
            FeedPost(
                title: 'Beast Channel',
                subtitle: 'by @mr.beast ',
                dp: 'assets/images/dp7.png',
                text:
                    'Fusce iaculis libero nec diam gravida, sit amet accumsan nibh maximus. Sed id tristique ante. Nullam pretium, risus ac hendrerit bibendum, risus leo ultrices augue, in dictum odio libero vitae orci. Aliquam lobortis!! 🍅🤸🏽‍♀️',
                promoted: false),
            FeedPost(
              title: 'Life of Taylor',
              subtitle: 'by @taylorswift  ',
              dp: 'assets/images/dp6.png',
              text:
                  'Aliquam lobortis, tellus malesuada sollicitudin tristique!!!',
              video: true,
              promoted: true,
            ),
            FeedPost(
                title: 'Amelie’s friends',
                subtitle: 'by @a-smith ',
                dp: 'assets/images/dp2.png',
                text:
                    'Sed id tristique ante. Nullam pretium, risus ac hendrerit bibendum, risus leo ultrices augue 🌝',
                promoted: false),
          ],
        ),
      ),
    ));
  }
}

class FeedPost extends StatelessWidget {
  const FeedPost({
    super.key,
    this.dp = 'assets/images/dp_default.png',
    required this.title,
    required this.subtitle,
    required this.promoted,
    this.text = '',
    this.video = false,
  });
  final String? dp;
  final String title;
  final String subtitle;
  final bool promoted;
  final String? text;
  final bool? video;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      dp!,
                      height: 30,
                      width: 30,
                      fit: BoxFit.fill,
                    ),
                  ),
                  horizontalGap(8),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SimpleWhitetextBold(text: title),
                                horizontalGap(5),
                                const GeneralTextPrimaryGrey(text: '1h')
                              ],
                            ),
                            Row(
                              children: [
                                GeneralTextGrey(text: subtitle),
                                //horizontalGap(),
                                Image.asset(
                                  'assets/images/star_white.png',
                                  width: 10,
                                  height: 10,
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            promoted
                                ? const GeneralTextGrey(text: 'promoted')
                                : const SizedBox.shrink(),
                            Row(
                              children: [
                                const GeneralTextPrimaryGrey(
                                  text: '560',
                                ),
                                horizontalGap(3),
                                const Icon(
                                  Icons.remove_red_eye,
                                  color: TopicColor.primaryGrey,
                                  size: 20,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              text == "" ? const SizedBox.shrink() : verticalGap(10),
              text == ""
                  ? const SizedBox.shrink()
                  : Text(
                      text!,
                      style: const TextStyle(
                          color: TopicColor.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
            ],
          ),
        ),
        verticalGap(10),
        video!
            ? Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset('assets/images/Post_video.png'),
                  Icon(
                    Icons.play_arrow_rounded,
                    color: TopicColor.white,
                    size: 50,
                  )
                ],
              )
            : SizedBox.shrink(),
        video! ? verticalGap(10) : SizedBox.shrink(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              LikeDislikeContainer(
                text: '🌝 3',
              ),
              LikeDislikeContainer(
                text: '🚀 5',
              ),
              LikeDislikeContainer(
                text: '😍 7',
              ),
              LikeDislikeContainer(
                text: '+2',
              ),
              Icon(
                Icons.add_circle_outline_outlined,
                color: TopicColor.lightGrey,
                size: 20,
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 2,
            child: Divider(
              color: TopicColor.lightGrey,
            ),
          ),
        )
      ],
    );
  }
}

class LikeDislikeContainer extends StatelessWidget {
  const LikeDislikeContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 17,
        decoration: BoxDecoration(
          color: TopicColor.lightGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: GeneralTextwhite(
            text: text,
            size: 10,
          ),
        ),
      ),
    );
  }
}
