import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Notifications'),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          verticalGap(20),
          Column(
            children: [
              NotificationDayText(
                text: 'Today',
              ),
              verticalGap(5),
              NotificationContainer(
                text:
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly',
                time: 'Just now',
                unread: true,
              ),
              NotificationContainer(
                text:
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly',
                time: '1 min',
              ),
              NotificationDayText(text: 'This week'),
              NotificationContainer(
                text:
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly',
                time: '2d',
              ),
              NotificationContainer(
                text:
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly',
                time: '2d',
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class NotificationDayText extends StatelessWidget {
  const NotificationDayText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GeneralTextPrimaryGrey(
        text: text,
      ),
    );
  }
}

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({
    super.key,
    required this.text,
    this.unread = false,
    required this.time,
  });
  final String text;
  final String time;
  final bool? unread;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: unread! ? TopicColor.primaryGrey2 : Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          children: [
            Text(
              text,
              style: TopicTextStyle.GeneralStyleWhite,
            ),
            verticalGap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GeneralTextGrey(text: time),
                unread! ? horizontalGap(5) : SizedBox.shrink(),
                unread!
                    ? Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                            color: TopicColor.primary, shape: BoxShape.circle),
                      )
                    : SizedBox.shrink()
              ],
            )
          ],
        ),
      ),
    );
  }
}
