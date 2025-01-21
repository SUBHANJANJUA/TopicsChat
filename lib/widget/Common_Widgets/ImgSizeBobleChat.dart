import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';

class ImgGreaterSevenContainer extends StatelessWidget {
  const ImgGreaterSevenContainer({
    super.key,
    required this.sendme,
  });

  final bool sendme;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11),
      ),
      child: SizedBox(
        width: 220,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/top_left.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/top_right.png',
                  width: 109,
                ),
              ],
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
              ],
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 72,
                ),
                Container(
                  height: 64,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 72,
                ),
                Container(
                  height: 64,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Stack(children: [
                  Image.asset(
                    'assets/images/squre_common.png',
                    width: 72,
                  ),
                  Container(
                    width: 72,
                    height: 64,
                    color: Colors.black.withOpacity(0.5),
                    child: Icon(
                      Icons.add_circle_outline_outlined,
                      color: Colors.white,
                    ),
                  )
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImgSevenContainer extends StatelessWidget {
  const ImgSevenContainer({
    super.key,
    required this.sendme,
  });

  final bool sendme;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11),
      ),
      child: SizedBox(
        width: 220,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/top_left.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/top_right.png',
                  width: 109,
                ),
              ],
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
              ],
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 72,
                ),
                Container(
                  height: 64,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 72,
                ),
                Container(
                  height: 64,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 72,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImgSixContainer extends StatelessWidget {
  const ImgSixContainer({
    super.key,
    required this.sendme,
  });

  final bool sendme;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11),
      ),
      child: SizedBox(
        width: 220,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/top_left.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/top_right.png',
                  width: 109,
                ),
              ],
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
              ],
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImgFiveContainer extends StatelessWidget {
  const ImgFiveContainer({
    super.key,
    required this.sendme,
  });

  final bool sendme;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11),
      ),
      child: SizedBox(
        width: 220,
        child: Column(
          children: [
            Image.asset(
              'assets/images/flat_top.png',
              width: 220,
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
              ],
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImgFourContainer extends StatelessWidget {
  const ImgFourContainer({
    super.key,
    required this.sendme,
  });

  final bool sendme;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11),
      ),
      child: SizedBox(
        width: 220,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/top_left.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/top_right.png',
                  width: 109,
                ),
              ],
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImgThreeContainer extends StatelessWidget {
  const ImgThreeContainer({
    super.key,
    required this.sendme,
  });

  final bool sendme;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11),
      ),
      child: SizedBox(
        width: 220,
        child: Column(
          children: [
            Image.asset(
              'assets/images/flat_top.png',
              width: 220,
            ),
            Container(
              height: 2,
              width: 220,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
                Container(
                  height: 97,
                  width: 2,
                  color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
                ),
                Image.asset(
                  'assets/images/squre_common.png',
                  width: 109,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImgTwoContainer extends StatelessWidget {
  const ImgTwoContainer({
    super.key,
    required this.sendme,
  });

  final bool sendme;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11),
      ),
      child: SizedBox(
        width: 220,
        child: Row(
          children: [
            Image.asset(
              'assets/images/top_left.png',
              width: 109,
            ),
            Container(
              height: 97,
              width: 2,
              color: sendme ? TopicColor.sender1 : TopicColor.reciver2,
            ),
            Image.asset(
              'assets/images/top_right.png',
              width: 109,
            ),
          ],
        ),
      ),
    );
  }
}

class ImgOneContainer extends StatelessWidget {
  const ImgOneContainer({
    super.key,
    this.img = '',
  });

  final String? img;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(11),
      ),
      child: Image.asset(
        img!,
        height: 190,
        width: 220,
        fit: BoxFit.cover,
      ),
    );
  }
}

class VideoContainer extends StatelessWidget {
  const VideoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      width: 220,
      child: Stack(children: [
        Image.asset(
          'assets/images/single_img.png',
          height: 203,
          width: 220,
        ),
        Container(
          height: 203,
          width: 220,
          color: Colors.black.withOpacity(0.5),
          child: Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 50,
          ),
        )
      ]),
    );
  }
}
