import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';

import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';

import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';

import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class SelectImagesPickerRow extends StatelessWidget {
  const SelectImagesPickerRow({
    super.key,
    required this.controller,
  });

  final ChatController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: TopicColor.bgGrey,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                context: context,
                builder: (BuildContext builder) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            profileHeadingwhite(text: 'Add group image'),
                            const crossIcon(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () async {
                            Navigator.pop(context); // Close the bottom sheet
                            await controller
                                .pickImage(ImageSource.camera); // Open camera
                          },
                          child: GeneralTextwhite(
                            text: 'Take photo',
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              color: TopicColor.white,
                            ),
                          ),
                        ),
                      ),
                      Divider(color: TopicColor.lightGrey),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () async {
                            Navigator.pop(context); // Close the bottom sheet
                            await controller
                                .pickImage(ImageSource.gallery); // Open gallery
                          },
                          child: GeneralTextwhite(
                            text: 'Choose photos',
                            icon: Icon(
                              Icons.image_outlined,
                              color: TopicColor.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: const SelectimageContainer(),
          ),
          Obx(() {
            return Row(
              children:
                  List.generate(controller.selectedImages.length, (index) {
                return Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 110,
                  width: 110,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.red,
                          image: DecorationImage(
                            image: FileImage(controller.selectedImages[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: GestureDetector(
                          onTap: () =>
                              controller.removeImage(index), // Remove image
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: TopicColor.lightGrey,
                            ),
                            child: Icon(
                              Icons.close,
                              color: TopicColor.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        bottom: 10,
                        child: GeneralTextwhite(
                          text: "${index + 1}",
                          icon: const SizedBox(height: 1),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            );
          }),
        ],
      ),
    );
  }
}

class groupParticipantContainer extends StatelessWidget {
  const groupParticipantContainer({
    super.key,
    required this.dp,
    required this.title,
    this.subtitle,
    this.admin = false,
  });
  final String dp;
  final String title;
  final String? subtitle;
  final bool admin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            dp,
            width: 43,
            height: 43,
          ),
          horizontalGap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GeneralTextwhite(
                  text: title,
                ),
                sufixtextchatlistcontainer(time: subtitle),
              ],
            ),
          ),
          admin
              ? const GeneralTextGrey(text: 'Admin')
              : GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: TopicColor.bgchatGrey,
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30.0)),
                        ),
                        builder: (BuildContext builder) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      dp,
                                      width: 43,
                                      height: 43,
                                    ),
                                    horizontalGap(10),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GeneralTextwhite(
                                              text: title,
                                              icon: const SizedBox(
                                                height: 1,
                                                width: 5,
                                              )),
                                        ],
                                      ),
                                    ),
                                    const crossIcon()
                                  ],
                                ),
                              ),
                              verticalGap(10),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/sheild.png',
                                      height: 20,
                                      width: 16,
                                    ),
                                    horizontalGap(10),
                                    GeneralTextwhite(text: 'Promote to admin'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 2,
                                child: Divider(
                                  color: TopicColor.lightGrey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/person3.png',
                                      height: 20,
                                      width: 23,
                                    ),
                                    horizontalGap(10),
                                    GeneralTextwhite(
                                        text: 'Promote to speaker'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 2,
                                child: Divider(
                                  color: TopicColor.lightGrey,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      backgroundColor: TopicColor.bgchatGrey,
                                      context: context,
                                      isScrollControlled: true,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(30.0)),
                                      ),
                                      builder: (BuildContext builder) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Are you sure you want to delete tab?',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18,
                                                              color: TopicColor
                                                                  .white),
                                                        ),
                                                      ),
                                                      horizontalGap(10),
                                                      const crossIcon(
                                                        size: 30,
                                                      )
                                                    ],
                                                  ),
                                                  verticalGap(5),
                                                  GeneralTextwhite(
                                                      text:
                                                          'It won’t be possible to restore it later.'),
                                                  verticalGap(30),
                                                  GeneralTextDanger(
                                                    text: 'Delete everything',
                                                    icon: Image.asset(
                                                      'assets/images/delete.png',
                                                      width: 15,
                                                      height: 18,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                              child: Divider(
                                                color: TopicColor.lightGrey,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.photo_outlined,
                                                        color: TopicColor
                                                            .lightOrange,
                                                        size: 20,
                                                      ),
                                                      horizontalGap(10),
                                                      const Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            GeneralTextDanger(
                                                                text:
                                                                    'Delete but save media'),
                                                            GeneralTextGrey(
                                                                text:
                                                                    'All the tab media will be saved in your library')
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  verticalGap(28),
                                                  TopicLoaderButton(
                                                      borderSide:
                                                          TopicColor.lightGrey,
                                                      color:
                                                          TopicColor.bgchatGrey,
                                                      btnText: 'Cancel',
                                                      onTap: () async {
                                                        Get.back();
                                                      })
                                                ],
                                              ),
                                            )
                                          ],
                                        );
                                      });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.remove_circle_outline,
                                        color: TopicColor.lightOrange,
                                      ),
                                      horizontalGap(10),
                                      const GeneralTextDanger(
                                          text: 'Remove tab access'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  child: Icon(
                    Icons.navigate_next_rounded,
                    color: TopicColor.lightGrey,
                  ),
                ),
        ],
      ),
    );
  }
}
