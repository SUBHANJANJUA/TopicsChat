import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/view/home/feed/feedController/feedController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';

class FAQView extends StatelessWidget {
  FAQView({super.key});
  final FeedController controller = Get.put(FeedController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'FAQs'),
        titleSpacing: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Obx(
          () => SingleChildScrollView(
            child: Column(
              children: [
                TopicTextField(
                  prefixIcon: Icons.search,
                  hintText: 'Search...',
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq1.value,
                  onToggle: controller.toggleFaq1,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq2.value,
                  onToggle: controller.toggleFaq2,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq3.value,
                  onToggle: controller.toggleFaq3,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq4.value,
                  onToggle: controller.toggleFaq4,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq5.value,
                  onToggle: controller.toggleFaq5,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq6.value,
                  onToggle: controller.toggleFaq6,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq7.value,
                  onToggle: controller.toggleFaq7,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq8.value,
                  onToggle: controller.toggleFaq8,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq9.value,
                  onToggle: controller.toggleFaq9,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq10.value,
                  onToggle: controller.toggleFaq10,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq11.value,
                  onToggle: controller.toggleFaq11,
                ),
                verticalGap(10),
                FAQsQuestionContainer(
                  question: 'How does Topics work?',
                  answer:
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.',
                  value: controller.faq12.value,
                  onToggle: controller.toggleFaq12,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class FAQsQuestionContainer extends StatelessWidget {
  FAQsQuestionContainer({
    super.key,
    required this.value,
    required this.onToggle,
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;
  final bool value;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: value ? TopicColor.primaryGrey : TopicColor.bgchatGrey,
      ),
      child: Column(
        children: [
          GeneralTextwhite3(
            onTap: onToggle,
            text: question,
            actionIcon: value
                ? const Icon(
                    Icons.keyboard_arrow_up,
                    color: TopicColor.white,
                    size: 25,
                  )
                : const Icon(
                    Icons.keyboard_arrow_down,
                    color: TopicColor.white,
                    size: 25,
                  ),
          ),
          value ? horizontalDivider() : const SizedBox.shrink(),
          value
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: SimpleGreytextBold(
                    weight: FontWeight.w400,
                    text: answer,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
