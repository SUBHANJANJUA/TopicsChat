import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/TAbSettingView.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/view/home/chat/groupScreen.dart';
import 'package:topics/view/home/chat/privacy_lock_view.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';

class GeneralText extends StatelessWidget {
  const GeneralText({
    super.key,
    required this.text,
    this.textalign,
    this.padding = const EdgeInsets.only(left: 10.0),
  });
  final String text;
  final TextAlign? textalign;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: Text(
        textAlign: textalign,
        text,
        style: const TextStyle(
            fontSize: 14,
            color: TopicColor.lightGrey,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}

class PrimaryRegular12 extends StatelessWidget {
  const PrimaryRegular12({super.key, this.text = '', this.color});
  final String? text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
          fontSize: 12,
          color: color ?? TopicColor.primary,
          fontWeight: FontWeight.w400),
    );
  }
}

class RememberHeading extends StatelessWidget {
  const RememberHeading({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
    );
  }
}

class RememberSubHeading extends StatelessWidget {
  const RememberSubHeading({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.w300, fontSize: 16),
    );
  }
}

class textWhiteBold14 extends StatelessWidget {
  const textWhiteBold14({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: TopicColor.white),
    );
  }
}

class lightGreytext14 extends StatelessWidget {
  const lightGreytext14({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: TopicColor.lightGrey,
      ),
    );
  }
}

class GeneralTextPrimaryGrey extends StatelessWidget {
  const GeneralTextPrimaryGrey({
    super.key,
    required this.text,
    this.icon,
    this.weight = FontWeight.w500,
    this.size = 14,
    this.color = TopicColor.primaryGrey,
  });
  final double? size;
  final String text;
  final Widget? icon;
  final FontWeight? weight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon ?? const SizedBox.shrink(),
        if (icon != null) horizontalGap(10),
        Text(text,
            style: TextStyle(
              fontWeight: weight,
              fontSize: size,
              color: color,
            )),
      ],
    );
  }
}

class GeneralTextPrimary extends StatelessWidget {
  const GeneralTextPrimary({
    super.key,
    required this.text,
    this.icon,
    this.weight = FontWeight.w500,
    this.size = 14,
    this.color = TopicColor.primary,
    this.onTap,
  });
  final double? size;
  final String text;
  final Widget? icon;
  final FontWeight? weight;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          icon ?? const SizedBox.shrink(),
          if (icon != null) horizontalGap(10),
          Text(text,
              style: TextStyle(
                fontWeight: weight,
                fontSize: size,
                color: color,
              )),
        ],
      ),
    );
  }
}

class GeneralTextDanger2 extends StatelessWidget {
  const GeneralTextDanger2({
    super.key,
    required this.text,
    this.weight = FontWeight.w500,
    this.size = 14,
    this.icon,
    this.color = TopicColor.lightOrange,
    this.onTap,
  });
  final String text;
  final FontWeight? weight;
  final double? size;
  final Widget? icon;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            icon ?? const SizedBox.shrink(),
            if (icon != null) horizontalGap(10),
            Text(text,
                style: TextStyle(
                  fontWeight: weight,
                  fontSize: size,
                  color: color,
                )),
          ],
        ),
      ),
    );
  }
}

class GeneralTextDanger extends StatelessWidget {
  const GeneralTextDanger({
    super.key,
    required this.text,
    this.weight = FontWeight.w500,
    this.size = 14,
    this.icon,
    this.color = TopicColor.lightOrange,
    this.alignment = MainAxisAlignment.start,
  });
  final String text;
  final FontWeight? weight;
  final double? size;
  final Widget? icon;
  final Color? color;
  final MainAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        icon ?? const SizedBox.shrink(),
        if (icon != null) horizontalGap(10),
        Text(text,
            style: TextStyle(
              fontWeight: weight,
              fontSize: size,
              color: color,
            )),
      ],
    );
  }
}

class profileHeadingwhite extends StatelessWidget {
  profileHeadingwhite({
    super.key,
    required this.text,
    //this.icon,
  });
  final String text;
  //final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // icon!,
        Text(text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: TopicColor.white,
            )),
      ],
    );
  }
}

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 24, color: Colors.white),
    );
  }
}

class TextGreen12 extends StatelessWidget {
  const TextGreen12({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w400, color: TopicColor.bgGreen),
    );
  }
}

class crossIcon extends StatelessWidget {
  const crossIcon({
    super.key,
    this.size = 24,
    this.onTap,
  });
  final double size;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Get.back(),
      child: Icon(
        Icons.close,
        size: size,
        color: Colors.white,
      ),
    );
  }
}

class GeneralTextGrey extends StatelessWidget {
  const GeneralTextGrey(
      {super.key,
      required this.text,
      this.color = TopicColor.lightGrey,
      this.size = 14,
      this.weight = FontWeight.w500});
  final String text;
  final FontWeight weight;
  final double size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class GeneralTextGreyitelic extends StatelessWidget {
  const GeneralTextGreyitelic(
      {super.key,
      required this.text,
      this.size = 14,
      this.weight = FontWeight.w500});
  final String text;
  final FontWeight weight;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: weight,
          fontSize: size,
          color: TopicColor.lightGrey,
          fontStyle: FontStyle.italic),
    );
  }
}

class ProfileText extends StatelessWidget {
  ProfileText({
    super.key,
    required this.text,
    this.lock = false,
  });
  final bool? lock;
  final String text;

  @override
  Widget build(BuildContext context) {
    final ChatController controller = Get.put(ChatController());

    return GestureDetector(
      onTap: () {
        lock!
            ? Get.to(() => const PrivacyLockView(
                  widget: AppBarTabView(),
                ))
            : showDialog(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      verticalGap(100),
                      Container(
                        width: 171,
                        // height: 153,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                    ),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () =>
                                              Get.to(() => TabSettingView()),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: GeneralTextwhite(
                                              weight: FontWeight.w600,
                                              text: 'Tab settings',
                                              icon: const Icon(
                                                Icons.settings_outlined,
                                                color: TopicColor.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                          child: Divider(
                                            color: TopicColor.lightGrey,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: GeneralTextwhite(
                                            weight: FontWeight.w600,
                                            text: 'Mute tab',
                                            icon: Image.asset(
                                              'assets/images/mute.png',
                                              width: 18,
                                              height: 18,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                          child: Divider(
                                            color: TopicColor.lightGrey,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: GeneralTextwhite(
                                            weight: FontWeight.w600,
                                            text: 'Fix tab',
                                            icon: const Icon(
                                              Icons.push_pin_outlined,
                                              color: TopicColor.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )))),
                      ),
                    ],
                  );
                });

        controller.updateSelectedText2(text);
      },
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontWeight: controller.selectedText2.value == text
                      ? FontWeight.w600
                      : FontWeight.w400,
                  fontSize: 14,
                  color: controller.selectedText2.value == text
                      ? Colors.white
                      : TopicColor.lightGrey,
                ),
              ),
              horizontalGap(5),
              lock!
                  ? Icon(
                      Icons.lock,
                      color: controller.selectedText2.value == text
                          ? Colors.white
                          : TopicColor.lightGrey,
                      size: 15,
                    )
                  : const SizedBox.shrink(),
            ],
          )),
    );
  }
}

class LockSubheading extends StatelessWidget {
  const LockSubheading({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w300, color: TopicColor.white),
    );
  }
}

class whiteHeading24 extends StatelessWidget {
  const whiteHeading24({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 24, color: TopicColor.white),
    );
  }
}
