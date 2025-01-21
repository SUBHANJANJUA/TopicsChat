import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/snippet.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/view/home/feed/feedController/EditProfileFeedController.dart';
import 'package:topics/widget/Chat_Widgets/select_imagePicker.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class EditProfileView extends StatelessWidget {
  EditProfileView({super.key});
  final ChatController controller2 = Get.put(ChatController());
  final EditProfilteFeedController editProfilteFeedController =
      Get.put(EditProfilteFeedController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Edit profile'),
        titleSpacing: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GeneralTextPrimary(
              text: 'Save',
              weight: FontWeight.w600,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalGap(20),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      horizontalGap(15),
                      SelectImagesPickerRow(controller: controller2),
                    ],
                  ),
                ),
              ),
              verticalGap(30),
              GeneralText(text: 'Name'),
              verticalGap(5),
              TextFormField(
                style: TopicTextStyle.textfield,
              ),
              verticalGap(15),
              GeneralText(text: 'Username'),
              verticalGap(5),
              Obx(
                () => TextFieldContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        editProfilteFeedController.username.toString(),
                        style: TopicTextStyle.textfield,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: TopicColor.white,
                      )
                    ],
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: TopicColor.bgchatGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        )),
                        context: context,
                        builder: (BuildContext builder) {
                          return Obx(
                            () => Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SimpleWhitetextBold(
                                        text: 'Username',
                                        size: 18,
                                      ),
                                      crossIcon(
                                        size: 30,
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    GeneralTextwhite3(
                                        text: 'henryylopez',
                                        onTap: () {
                                          editProfilteFeedController
                                              .selectusername("henryylopez");
                                          Get.back();
                                        }),
                                    editProfilteFeedController.username.value ==
                                            "henryylopez"
                                        ? Icon(
                                            Icons.check,
                                            color: TopicColor.primary,
                                          )
                                        : SizedBox.shrink()
                                  ],
                                ),
                                horizontalDivider(),
                                Row(
                                  children: [
                                    GeneralTextwhite3(
                                        text: 'lopezlopez193',
                                        onTap: () {
                                          editProfilteFeedController
                                              .selectusername("lopezlopez193");
                                          Get.back();
                                        }),
                                    editProfilteFeedController.username.value ==
                                            "lopezlopez193"
                                        ? Icon(
                                            Icons.check,
                                            color: TopicColor.primary,
                                          )
                                        : SizedBox.shrink()
                                  ],
                                ),
                                horizontalDivider(),
                                GeneralTextwhite3(
                                  text: 'Buy custom username',
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    color: TopicColor.white,
                                  ),
                                ),
                                horizontalDivider(),
                              ],
                            ),
                          );
                        });
                  },
                ),
              ),
              verticalGap(15),
              GeneralText(text: 'Email'),
              verticalGap(5),
              TextFormField(
                style: TopicTextStyle.textfield,
              ),
              verticalGap(15),
              GeneralText(text: 'Phone'),
              verticalGap(5),
              TextFormField(
                style: TopicTextStyle.textfield,
              ),
              verticalGap(15),
              GeneralText(text: 'Gender'),
              verticalGap(5),
              Obx(
                () => TextFieldContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        editProfilteFeedController.gender.toString(),
                        style: TopicTextStyle.textfield,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: TopicColor.white,
                      )
                    ],
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: TopicColor.bgchatGrey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        )),
                        context: context,
                        builder: (BuildContext builder) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SimpleWhitetextBold(
                                      text: 'Gender',
                                      size: 18,
                                    ),
                                    crossIcon(
                                      size: 30,
                                    )
                                  ],
                                ),
                              ),
                              GeneralTextwhite3(
                                  text: 'Male',
                                  onTap: () {
                                    editProfilteFeedController
                                        .selectGender("Male");
                                    Get.back();
                                  }),
                              horizontalDivider(),
                              GeneralTextwhite3(
                                  text: 'Female',
                                  onTap: () {
                                    editProfilteFeedController
                                        .selectGender("Female");
                                    Get.back();
                                  }),
                              horizontalDivider(),
                              GeneralTextwhite3(
                                  text: 'Non binary',
                                  onTap: () {
                                    editProfilteFeedController
                                        .selectGender("Non binary");
                                    Get.back();
                                  }),
                              horizontalDivider(),
                            ],
                          );
                        });
                  },
                ),
              ),
              verticalGap(15),
              GeneralText(text: 'Date of birth'),
              verticalGap(5),
              TextFormField(
                style: TopicTextStyle.textfield,
              ),
              verticalGap(15),
              GeneralText(text: 'Interests'),
              verticalGap(5),
              TextFormField(
                style: TopicTextStyle.textfield,
              ),
              verticalGap(15),
            ],
          ),
        ),
      ),
    ));
  }
}
