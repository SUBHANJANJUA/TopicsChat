import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/home/feed/feedController/feedController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class ContactUsView extends StatelessWidget {
  ContactUsView({super.key});
  final FeedController controller = Get.put(FeedController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Contact us'),
        titleSpacing: 0.0,
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SimpleWhitetextBold(
                          size: 18,
                          weight: FontWeight.w300,
                          text:
                              "Fill out the form below and we'll get back to you as soon as possible. "),
                      verticalGap(20),
                      GeneralText(text: 'Subject'),
                      verticalGap(5),
                      TextFormField(
                        controller: controller.controllersubject,
                        onChanged: controller.validatesubject,
                        style: TopicTextStyle.textfield,
                        decoration: InputDecoration(
                          errorText: controller.isValidsubject.value ||
                                  controller.subject.value.isEmpty
                              ? null
                              : 'Subject is required',
                        ),
                      ),
                      verticalGap(15),
                      GeneralText(text: 'Message'),
                      verticalGap(5),
                      TextFormField(
                        maxLines: 10,
                        controller: controller.controllermessage,
                        onChanged: controller.validatemessage,
                        style: TopicTextStyle.textfield,
                        decoration: InputDecoration(
                          errorText: controller.isValidmessage.value ||
                                  controller.message.value.isEmpty
                              ? null
                              : 'Message is required',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TopicLoaderButton(
                btnText: 'Send',
                onTap: () async {},
                color: controller.isValidmessage.value &&
                        controller.isValidsubject.value
                    ? TopicColor.primary
                    : TopicColor.lightGrey,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
