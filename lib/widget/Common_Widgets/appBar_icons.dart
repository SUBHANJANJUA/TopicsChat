import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';

class appBarActionIcon extends StatelessWidget {
  const appBarActionIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/camera2.png',
          width: 21,
          height: 17,
        ),
        horizontalGap(20),
        Image.asset(
          'assets/images/call_unselected.png',
          width: 17,
          height: 17,
        ),
        horizontalGap(25),
      ],
    );
  }
}

class backIconButtonLeading extends StatelessWidget {
  const backIconButtonLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}

class appBarSubTitle extends StatelessWidget {
  const appBarSubTitle({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: text == "Online" ? TopicColor.chatGreen : TopicColor.primary),
    );
  }
}

class appBarTitle2 extends StatelessWidget {
  const appBarTitle2({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: TopicColor.titleGrey,
          fontSize: 12,
          fontWeight: FontWeight.w400),
    );
  }
}

class appBarTitle extends StatelessWidget {
  appBarTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
    );
  }
}

class GroupAppBarTitle extends StatelessWidget {
  const GroupAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          //color: Colors.red,
          height: 41,
          width: 50,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/dp1.png',
                  width: 35,
                  height: 35,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/dp2.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
        horizontalGap(10),
        Expanded(child: appBarTitle(text: 'John Travis, Carlos Gomes')),
      ],
    );
  }
}
