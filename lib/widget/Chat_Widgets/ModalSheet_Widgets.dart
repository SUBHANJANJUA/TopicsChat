import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/view/home/chat/groupScreen.dart';
import 'package:topics/widget/Chat_Widgets/select_imagePicker.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';

import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class SelectNewGroupModalSheet extends StatelessWidget {
  const SelectNewGroupModalSheet({
    super.key,
    required this.contactList,
    required this.chatController,
  });

  final List<Map<String, dynamic>> contactList;
  final ChatController chatController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.95,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const backIconButtonLeading(),
                    profileHeadingwhite(text: 'New Group'),
                    const crossIcon(),
                  ],
                ),
                verticalGap(20),
                TopicTextField(
                  prefixIcon: Icons.search,
                  hintText: 'Search...',
                ),
                verticalGap(20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const selectedContactGroupContainer(
                      name: 'John Travis',
                    ),
                    horizontalGap(10),
                    const selectedContactGroupContainer(
                      name: 'Carlos Gomes',
                    ),
                  ],
                )
              ],
            ),
          ),
          verticalGap(10),
          Divider(
            color: TopicColor.lightGrey,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                  itemCount: contactList.length,
                  itemBuilder: (context, index) {
                    final selectItem = contactList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Image.asset(
                                  selectItem['dp'],
                                  width: 35,
                                  height: 35,
                                ),
                                horizontalGap(10),
                                GeneralTextwhite(
                                  text: selectItem['Name'],
                                  icon: const SizedBox(
                                    height: 1,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Obx(
                            () => GestureDetector(
                              onTap: () {
                                chatController.toggleChecked(index);
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: chatController.isCheckedList[index]
                                        ? TopicColor.primary
                                        : Colors.grey,
                                    width: 2,
                                  ),
                                  color: chatController.isCheckedList[index]
                                      ? TopicColor.primary
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: TopicLoaderButton(
                color: TopicColor.primary,
                btnText: 'Send',
                onTap: () async {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: TopicColor.bgchatGrey,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.0),
                      )),
                      isScrollControlled: true,
                      builder: (BuildContext builder) {
                        return SelectNewGroupNameModalSheet();
                      });
                }),
          )
        ],
      ),
    );
  }
}

class SelectNewGroupNameModalSheet extends StatelessWidget {
  SelectNewGroupNameModalSheet({
    super.key,
  });
  final ChatController controller = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.95,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 40,
                  height: 2,
                ),
                profileHeadingwhite(text: 'New Group'),
                const crossIcon(),
              ],
            ),
          ),
          verticalGap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                horizontalGap(15),
                SelectImagesPickerRow(controller: controller),
              ],
            ),
          ),
          verticalGap(50),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Group Name field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: GeneralText(
                          text: 'Group name',
                        ),
                      ),
                      verticalGap(5),
                      TopicTextField(),
                    ],
                  ),
                ),
                //bottom buttons
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TopicLoaderButton(
                          color: TopicColor.bgchatGrey,
                          borderSide: TopicColor.lightGrey,
                          btnText: 'Back',
                          onTap: () async {
                            Get.back();
                          }),
                      verticalGap(10),
                      TopicLoaderButton(
                          color: TopicColor.primary,
                          btnText: 'Create group',
                          onTap: () async {
                            Get.offAll(() => GroupScreenView());
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
