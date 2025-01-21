import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';

import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';

import 'package:topics/widget/Chat_Widgets/select_imagePicker.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class Groupprofileview extends StatelessWidget {
  Groupprofileview({super.key});
  final ChatController controller = Get.put(ChatController());
  final List<Map<String, dynamic>> Participants = [
    {
      "dp": "assets/images/dp1.png",
      "title": "Me",
      "subtitle": "@lopezlopez",
      "admin": true,
    },
    {
      "dp": "assets/images/dp2.png",
      "title": "John Travis",
      "subtitle": "@johnnyT1992",
      "admin": false,
    },
    {
      "dp": "assets/images/dp3.png",
      "title": "Carlos Gomes",
      "subtitle": "@c.gomes",
      "admin": false,
    },
    {
      "dp": "assets/images/dp2.png",
      "title": "John Travis",
      "subtitle": "@johnnyT1992",
      "admin": false,
    },
    {
      "dp": "assets/images/dp3.png",
      "title": "Carlos Gomes",
      "subtitle": "@c.gomes",
      "admin": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        backgroundColor: TopicColor.reciver1,
        leading: const backIconButtonLeading(),
        actions: [const appBarActionIcon()],
        title: const GroupAppBarTitle(),
        titleSpacing: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GeneralTextGrey(
                    text: 'Files, links and documents',
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: TopicColor.lightGrey,
                    size: 15,
                  )
                ],
              ),
              verticalGap(7),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Image.asset(
                        'assets/images/gallerypic1.png',
                        //height: 142,
                        // width: 95,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/gallerypic2.png',
                      // height: 142,
                      //  width: 95,
                    ),
                  ),
                  Container(
                    width: 1,
                    height: 79,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/gallerypic3.png',
                      //  height: 142,
                      //  width: 95,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/gallerypic1.png',
                    ),
                  ),
                ],
              ),
              verticalGap(35),
              const GeneralTextPrimary(
                text: 'Add new tab',
                icon: Icon(
                  Icons.add_circle_outline,
                  color: TopicColor.primary,
                ),
              ),
              verticalGap(15),
              Divider(
                color: TopicColor.bgGrey,
              ),
              verticalGap(15),
              GestureDetector(
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
                        return SizedBox(
                          height: context.height * 0.87,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 15,
                                            height: 5,
                                          ),
                                          profileHeadingwhite(
                                              text: 'Edit group'),
                                          const crossIcon(),
                                        ],
                                      ),
                                      verticalGap(50),
                                      SelectImagesPickerRow(
                                          controller: controller),
                                      verticalGap(50),
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: GeneralText(
                                          text: 'Group name',
                                        ),
                                      ),
                                      verticalGap(5),
                                      TopicTextField(
                                          // validator: emailValid
                                          ),
                                    ],
                                  ),
                                ),
                                TopicLoaderButton(
                                    color: TopicColor.lightGrey,
                                    btnText: 'Save',
                                    onTap: () async {})
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const GeneralTextPrimary(
                  text: 'Edit group name and image',
                  icon: Icon(
                    Icons.edit_outlined,
                    color: TopicColor.primary,
                  ),
                ),
              ),
              verticalGap(15),
              Divider(
                color: TopicColor.bgGrey,
              ),
              verticalGap(15),
              const GeneralTextPrimary(
                text: 'Temporary message',
                icon: Icon(
                  Icons.timelapse,
                  color: TopicColor.primary,
                ),
              ),
              verticalGap(15),
              Divider(
                color: TopicColor.bgGrey,
              ),
              // verticalGap(15),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GeneralTextwhite(
                      text: 'Mute',
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/images/mute.png',
                            width: 20,
                            height: 20,
                          ),
                          horizontalGap(10),
                        ],
                      ),
                    ),
                    Switch(
                      value: controller.isSwitched4.value,
                      onChanged: (value) {
                        controller.toggleSwitch4(value);
                      },
                      activeColor: TopicColor.primary,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: TopicColor.white,
                      inactiveTrackColor: Colors.grey.shade400,
                    )
                  ],
                ),
              ),
              Divider(
                color: TopicColor.bgGrey,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GeneralTextwhite(
                      text: 'Save to camera roll',
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/images/download.png',
                            width: 20,
                            height: 20,
                          ),
                          horizontalGap(10),
                        ],
                      ),
                    ),
                    Switch(
                      value: controller.isSwitched5.value,
                      onChanged: (value) {
                        controller.toggleSwitch5(value);
                      },
                      activeColor: TopicColor.primary,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: TopicColor.white,
                      inactiveTrackColor: Colors.grey.shade400,
                    ),
                  ],
                ),
              ),
              Divider(
                color: TopicColor.bgGrey,
              ),
              verticalGap(15),
              const GeneralTextDanger(text: 'Delete conversation'),
              verticalGap(15),
              Divider(
                color: TopicColor.bgGrey,
              ),
              verticalGap(15),
              const GeneralTextDanger(text: 'Leave group'), verticalGap(15),
              Divider(
                color: TopicColor.bgGrey,
              ),
              verticalGap(15),
              const GeneralTextDanger(text: 'Report  group'), verticalGap(15),
              Divider(
                color: TopicColor.bgGrey,
              ),
              verticalGap(15),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: GeneralTextGrey(text: '3 Members')),
              verticalGap(10),
              Row(
                children: [
                  Container(
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                      color: TopicColor.lightGrey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Image.asset(
                          'assets/images/add_participant.png',
                          // width: 28,
                          // height: 24,
                        ),
                      ),
                    ),
                  ),
                  horizontalGap(10),
                  const GeneralTextPrimary(
                    text: 'Add participants',
                  )
                ],
              ),
              verticalGap(15),
              Column(
                children:
                    Participants.map((callback) => groupParticipantContainer(
                          dp: callback['dp'],
                          title: callback['title'],
                          subtitle: callback['subtitle'],
                          admin: callback['admin'],
                        )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
