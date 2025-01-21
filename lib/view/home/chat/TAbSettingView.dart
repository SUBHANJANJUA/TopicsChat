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
import 'package:topics/widget/auth_Widgets/OTPHeading.dart';

class TabSettingView extends StatelessWidget {
  TabSettingView({
    super.key,
    this.addTab = false,
  });
  final bool? addTab;

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
  ];

  final keepLoggedIn = false.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: OtpHeading(text: addTab! ? 'New tab' : 'Tab settings'),
        titleSpacing: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GeneralText(text: 'Name'),
                        verticalGap(5),
                        TopicTextField()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                    child: Divider(
                      color: TopicColor.lightGrey2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15,
                    ),
                    child: Obx(
                      () => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GeneralTextwhite(
                                  weight: FontWeight.w600,
                                  text: 'Only admin or speakers can speak'),
                              //Switch button 7
                              SizedBox(
                                height: 20,
                                width: 35,
                                child: Switch(
                                  value: controller.isSwitched7.value,
                                  onChanged: (value) {
                                    controller.toggleSwitch7(value);
                                  },
                                  activeColor: TopicColor.primary,
                                  inactiveThumbColor: Colors.white,
                                  activeTrackColor: TopicColor.white,
                                  inactiveTrackColor: Colors.grey.shade400,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                    child: Divider(
                      color: TopicColor.lightGrey2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15,
                    ),
                    child: Obx(
                      () => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: GeneralTextwhite(
                                    weight: FontWeight.w600,
                                    text:
                                        'All group members can access this tab '),
                              ),
                              //Switch button 8
                              SizedBox(
                                height: 20,
                                width: 35,
                                child: Switch(
                                  value: controller.isSwitched8.value,
                                  onChanged: (value) {
                                    controller.toggleSwitch8(value);
                                  },
                                  activeColor: TopicColor.primary,
                                  inactiveThumbColor: Colors.white,
                                  activeTrackColor: TopicColor.white,
                                  inactiveTrackColor: Colors.grey.shade400,
                                ),
                              )
                            ],
                          ),
                          addTab!
                              ? SizedBox.shrink()
                              : Column(
                                  children: [
                                    verticalGap(15),
                                    const Align(
                                        alignment: Alignment.centerLeft,
                                        child: GeneralTextGrey(
                                            text: '3/10 members')),
                                    verticalGap(15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: Participants.map((callback) =>
                                          groupParticipantContainer(
                                            dp: callback['dp'],
                                            title: callback['title'],
                                            subtitle: callback['subtitle'],
                                            admin: callback['admin'],
                                          )).toList(),
                                    ),
                                    verticalGap(10),
                                    Row(
                                      children: [
                                        Container(
                                          width: 43,
                                          height: 43,
                                          decoration: BoxDecoration(
                                            color: TopicColor.lightGrey,
                                            borderRadius:
                                                BorderRadius.circular(4),
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
                                  ],
                                ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                    child: Divider(
                      color: TopicColor.lightGrey2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15,
                    ),
                    child: Obx(
                      () => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GeneralTextwhite(
                                  weight: FontWeight.w600,
                                  text: 'Monetize tab (subscription)'),
                              //Switch button 9
                              SizedBox(
                                height: 20,
                                width: 35,
                                child: Switch(
                                  value: controller.isSwitched9.value,
                                  onChanged: (value) {
                                    controller.toggleSwitch9(value);
                                  },
                                  activeColor: TopicColor.primary,
                                  inactiveThumbColor: Colors.white,
                                  activeTrackColor: TopicColor.white,
                                  inactiveTrackColor: Colors.grey.shade400,
                                ),
                              )
                            ],
                          ),
                          addTab!
                              ? SizedBox.shrink()
                              : controller.isSwitched9.value
                                  ? Column(children: [
                                      verticalGap(10),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: Theme(
                                              data: ThemeData(
                                                unselectedWidgetColor:
                                                    Colors.grey,
                                              ),
                                              child: Radio<bool>(
                                                toggleable: true,
                                                value: keepLoggedIn.value,
                                                groupValue: true,
                                                onChanged: (value) {
                                                  keepLoggedIn.value =
                                                      !keepLoggedIn.value;
                                                },
                                                activeColor: Colors.white,
                                              ),
                                            ),
                                          ),
                                          horizontalGap(10),
                                          const PrimaryRegular12(
                                              text: 'One time payment',
                                              color: Colors.white),
                                        ],
                                      ),
                                      verticalGap(20),
                                      Container(
                                        width: 190,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          color: TopicColor.lightGrey2,
                                        ),
                                        child: Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                controller
                                                    .toggleCutomTab(false);
                                              },
                                              child: Container(
                                                  height: 25,
                                                  width: 95,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              21),
                                                      color: controller
                                                              .customTab.value
                                                          ? TopicColor
                                                              .lightGrey2
                                                          : TopicColor
                                                              .lightGrey),
                                                  child: GeneralTextwhite(
                                                    align: MainAxisAlignment
                                                        .center,
                                                    text: 'weekly',
                                                    size: 12,
                                                    weight: FontWeight.w600,
                                                  )),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                controller.toggleCutomTab(true);
                                              },
                                              child: Container(
                                                  height: 25,
                                                  width: 95,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              21),
                                                      color: controller
                                                              .customTab.value
                                                          ? TopicColor.lightGrey
                                                          : TopicColor
                                                              .lightGrey2),
                                                  child: GeneralTextwhite(
                                                    align: MainAxisAlignment
                                                        .center,
                                                    text: 'monthly',
                                                    size: 12,
                                                    weight: FontWeight.w600,
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                      verticalGap(10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GeneralTextGrey(
                                            text: '0,00',
                                            size: 55,
                                          ),
                                          horizontalGap(10),
                                          Container(
                                            height: 45,
                                            width: 2,
                                            color: TopicColor.white,
                                          ),
                                          horizontalGap(10),
                                          Column(
                                            children: [
                                              verticalGap(25),
                                              GeneralTextGrey(
                                                text: 'EUR',
                                                size: 15,
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ])
                                  : SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                    child: Divider(
                      color: TopicColor.lightGrey2,
                    ),
                  ),
                  addTab!
                      ? SizedBox.shrink()
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          child: GeneralTextDanger(
                            text: 'Delete tab',
                            weight: FontWeight.w600,
                            icon: Image.asset(
                              "assets/images/delete.png",
                              width: 15,
                              height: 18,
                            ),
                          ),
                        )
                ],
              ),
            ),
          ),
          addTab!
              ? Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TopicLoaderButton(
                    btnText: 'Create tab',
                    onTap: () async {},
                    color: TopicColor.primary,
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    ));
  }
}
