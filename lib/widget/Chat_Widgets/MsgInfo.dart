import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/boubleMsg.dart';

class signlyChatMsgInfo extends StatelessWidget {
  const signlyChatMsgInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
            padding: EdgeInsets.all(20.0),
            child: infoMsgRow(
                img: 'assets/images/bluetick.png',
                status: 'Read by',
                day: 'today',
                time: '17:03')),
        Divider(
          color: TopicColor.lightGrey,
        ),
        const Padding(
            padding: EdgeInsets.all(20.0),
            child: infoMsgRow(
                img: 'assets/images/greytick.png',
                status: 'Delivered',
                day: 'today',
                time: '17:01')),
      ],
    );
  }
}

class GroupMsgInfo extends StatelessWidget {
  const GroupMsgInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const infoMsgRow(
                    img: 'assets/images/bluetick.png',

                    status: 'Read by',
                    // day: 'today',
                    // time: '17:03',
                  ),
                  verticalGap(25),
                  const infoMsgRow(
                    img: 'assets/images/dp1.png',
                    status: 'John Travis',
                    day: 'today',
                    time: '17:03',
                    width: 35.0,
                    height: 35.0,
                  ),
                  verticalGap(20),
                  const infoMsgRow(
                    img: 'assets/images/dp2.png',
                    status: 'Joy Bright',
                    day: '28/01/24',
                    time: '11:36',
                    width: 35.0,
                    height: 35.0,
                  ),
                ],
              )),
          Divider(
            color: TopicColor.lightGrey,
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const infoMsgRow(
                    img: 'assets/images/greytick.png',
                    status: 'Delivered',
                    // day: 'today',
                    // time: '17:01'
                  ),
                  verticalGap(25),
                  const infoMsgRow(
                    img: 'assets/images/dp1.png',
                    status: 'John Travis',
                    day: 'today',
                    time: '17:03',
                    width: 35.0,
                    height: 35.0,
                  ),
                  verticalGap(20),
                  const infoMsgRow(
                    img: 'assets/images/dp2.png',
                    status: 'Joy Bright',
                    day: '28/01/24',
                    time: '11:36',
                    width: 35.0,
                    height: 35.0,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
