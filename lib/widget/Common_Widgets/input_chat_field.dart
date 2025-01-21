import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/view/home/chat/chatTabView.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/view/home/chat/otherView.dart';

import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class inputChatField extends StatelessWidget {
  inputChatField({
    super.key,
    this.gallery = false,
  });
  final bool gallery;
  final ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          controller.isReply.value
              ? Reply_input_Field(
                  controller: controller,
                  text: controller.text2,
                  img: controller.img2,
                  payment: controller.payment2,
                )
              : const SizedBox.shrink(),
          Container(
            height: 50,
            color: TopicColor.reciver1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  horizontalGap(5),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: TopicColor.bgchatGrey,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(30)),
                          ),
                          context: context,
                          builder: (BuildContext builder) {
                            return const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.0, vertical: 38.0),
                              child: inputField_modelSheet(),
                            );
                          });
                    },
                    child: const Icon(
                      Icons.add_box_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  horizontalGap(8),
                  Expanded(
                    child: Container(
                      height: 34,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: TopicColor.bgfieldGrey,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 4.0),
                        child: Center(
                          child: Row(
                            children: [
                              Expanded(
                                  child: TextFormField(
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: gallery ? 'Write something...' : '',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                ),
                              )),
                              gallery
                                  ? const SizedBox.shrink()
                                  : Container(
                                      width: 27,
                                      height: 27,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: TopicColor.primary,
                                      ),
                                      child: const Icon(
                                        Icons.attach_money,
                                        color: Colors.white,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  horizontalGap(5),
                  gallery
                      ? Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: TopicColor.primary,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/send4.png',
                              width: 10,
                              height: 8,
                            ),
                          ),
                        )
                      : Row(
                          children: [
                            Icon(
                              Icons.mic_none_outlined,
                              color: TopicColor.white,
                            ),
                            horizontalGap(5),
                            Image.asset(
                              'assets/images/camera_icon.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                  horizontalGap(5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Reply_input_Field extends StatelessWidget {
  const Reply_input_Field({
    super.key,
    required this.controller,
    this.text = '',
    this.img,
    this.payment,
  });

  final ChatController controller;
  final String? text;
  final String? img;
  final String? payment;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(11)),
          color: TopicColor.sender2),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GeneralTextPrimary(
                    text: '@joybbright94',
                    size: 12,
                  ),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text ?? '',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: TopicColor.lightGrey),
                  ),
                ],
              ),
            ),
            img != null && img!.isNotEmpty
                ? Row(
                    children: [
                      horizontalGap(20),
                      Image.asset(
                        img!,
                        width: 45,
                        height: 45,
                      ),
                    ],
                  )
                : SizedBox.shrink(),
            horizontalGap(10),
            payment != null && payment!.isNotEmpty
                ? otherPriceContainer(price: payment)
                : SizedBox.shrink(),
            //horizontalGap(5),
            GestureDetector(
              onTap: () {
                controller.toggleIsReply(false, '', '', '');
              },
              child: Icon(Icons.close, size: 35, color: TopicColor.sender1),
            ),
          ],
        ),
      ),
    );
  }
}

class inputField_modelSheet extends StatelessWidget {
  const inputField_modelSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Input_Field_icon(
              text: 'Camera',
              dp: 'camera_icon2.png',
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: TopicColor.bgchatGrey,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    )),
                    context: context,
                    builder: (BuildContext builder) {
                      return SizedBox(
                          height: context.height * 0.95,
                          child: const Gallery_ModelSheet());
                    });
              },
              child: const Input_Field_icon(
                text: 'Libray',
                dp: 'gallery_icon.png',
              ),
            ),
            const Input_Field_icon(
              text: 'Document',
              dp: 'document_icon.png',
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: TopicColor.bgchatGrey,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    context: context,
                    builder: (BuildContext builder) {
                      return SizedBox(
                          height: context.height * 0.95,
                          child: const LocationModalSheet_inputfield());
                    });
              },
              child: const Input_Field_icon(
                text: 'Location',
                dp: 'location_icon.png',
              ),
            ),
          ],
        ),
        verticalGap(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Input_Field_icon(
              text: 'Contact',
              dp: 'contact_icon.png',
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: TopicColor.bgchatGrey,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    context: context,
                    builder: (BuildContext builder) {
                      return SizedBox(
                        height: context.height * 0.95,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Poll_create_modalSheet(),
                        ),
                      );
                    });
              },
              child: const Input_Field_icon(
                text: 'Poll',
                dp: 'poll_icon.png',
              ),
            ),
            const SizedBox(
              width: 72,
              height: 74,
            ),
            const SizedBox(
              width: 72,
              height: 74,
            ),
          ],
        )
      ],
    );
  }
}

class Poll_create_modalSheet extends StatelessWidget {
  Poll_create_modalSheet({
    super.key,
  });
  final ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                whiteHeading24(
                  text: 'Create poll',
                ),
                crossIcon(
                  size: 35,
                )
              ],
            ),
            verticalGap(30),
            const GeneralText(
              text: 'Question',
            ),
            verticalGap(5),
            SizedBox(
              height: 100,
              child: TopicTextField(
                maxLine: 4,
              ),
            ),
            verticalGap(30),
            const GeneralText(text: 'Option 1'),
            verticalGap(5),
            TopicTextField(),
            verticalGap(10),
            const GeneralText(text: 'Option 2'),
            verticalGap(5),
            TopicTextField(),
            verticalGap(10),
            const GeneralText(text: 'Option 3'),
            verticalGap(5),
            TopicTextField(),
            verticalGap(20),
            const GeneralTextPrimary(
              text: 'Add option',
              weight: FontWeight.w600,
              icon: Icon(
                Icons.add_circle_outline_outlined,
                color: TopicColor.primary,
              ),
            ),
            verticalGap(60),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GeneralTextwhite(
                    text: 'Allow multiple answers',
                    weight: FontWeight.w600,
                  ),
                  Switch(
                    value: controller.isSwitched6.value,
                    onChanged: (value) {
                      controller.toggleSwitch6(value);
                    },
                    activeColor: TopicColor.primary,
                    inactiveThumbColor: Colors.white,
                    activeTrackColor: TopicColor.white,
                    inactiveTrackColor: Colors.grey.shade400,
                  )
                ],
              ),
            )
          ],
        ),
        TopicLoaderButton(
          btnText: 'Send poll',
          onTap: () async {
            Get.offAll(const ChatScreenView());
          },
          color: TopicColor.primary,
        )
      ],
    );
  }
}

class LocationModalSheet_inputfield extends StatelessWidget {
  const LocationModalSheet_inputfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 4,
                      height: 5,
                    ),
                    profileHeadingwhite(text: 'Location'),
                    const crossIcon(),
                  ],
                ),
                verticalGap(25),
                TopicTextField(
                  prefixIcon: Icons.search,
                )
              ],
            ),
          ),
          Stack(alignment: AlignmentDirectional.bottomEnd, children: [
            Image.asset(
              'assets/images/map.png',
              // height: 510,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TopicLoaderButton(
                  color: TopicColor.black.withOpacity(0.4),
                  btnText: 'Share this location',
                  onTap: () async {}),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TopicLoaderButton(
                    color: TopicColor.bgchatGrey,
                    borderSide: TopicColor.lightGrey,
                    btnText: 'Share current location',
                    onTap: () async {}),
                verticalGap(15),
                TopicLoaderButton(
                    prefixWidget: Row(
                      children: [
                        Image.asset(
                          'assets/images/wifi_icon.png',
                          width: 17,
                          height: 18,
                        ),
                        horizontalGap(5),
                      ],
                    ),
                    color: TopicColor.bgchatGrey,
                    borderSide: TopicColor.lightGrey,
                    btnText: 'Share live location',
                    onTap: () async {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Gallery_ModelSheet extends StatelessWidget {
  const Gallery_ModelSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GeneralTextGrey(
                          text: 'To',
                          size: 18,
                          weight: FontWeight.w600,
                        ),
                        crossIcon()
                      ],
                    ),
                    GeneralTextwhite(
                      text: 'John Travis, Carlos Gomes',
                      weight: FontWeight.w600,
                    ),
                    verticalGap(20),
                    Image.asset('assets/images/table1.png'),
                    verticalGap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/table15.png',
                          width: 60,
                          height: 60,
                        ),
                        horizontalGap(5),
                        Image.asset(
                          'assets/images/table2.png',
                          width: 60,
                          height: 60,
                        ),
                        horizontalGap(5),
                        Image.asset(
                          'assets/images/table3.png',
                          width: 60,
                          height: 60,
                        ),
                        horizontalGap(5),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: inputChatField(
              gallery: true,
            ),
          ),
        ],
      ),
    );
  }
}

class Input_Field_icon extends StatelessWidget {
  const Input_Field_icon({
    super.key,
    required this.dp,
    required this.text,
  });
  final String dp;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/${dp}',
          height: 45,
          width: 45,
        ),
        verticalGap(10),
        GeneralTextwhite(
          text: text,
          weight: FontWeight.w600,
        )
      ],
    );
  }
}
