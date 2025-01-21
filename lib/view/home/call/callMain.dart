import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:topics/constant/color_contant.dart';

import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';

import 'package:topics/view/home/call/AllCallsView.dart';
import 'package:topics/view/home/call/MissedCallsView.dart';
import 'package:topics/view/home/call/call_controller/call_controller.dart';
import 'package:topics/view/home/call/callingView.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class CallsMainView extends StatelessWidget {
  CallsMainView({super.key});
  final CallController controller = Get.put(CallController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: TopicColor.black,
        appBar: AppBar(
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo_simple.png',
                  width: 36,
                  height: 36,
                ),
                horizontalGap(5),
                const HeadingTextAppBar(text: 'Calls')
              ],
            ),
          ),
          actions: [
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
                      return NewCallModalSheet();
                    });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image.asset(
                  'assets/images/call_plus.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 27,
                width: 190,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TabBar(
                  controller: controller.tabController,
                  indicator: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: -40),
                  tabs: const [
                    Tab(text: 'All'),
                    Tab(text: 'Missed'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: [AllCallsView(), MissedCallsView()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewCallModalSheet extends StatefulWidget {
  NewCallModalSheet({
    super.key,
  });

  @override
  State<NewCallModalSheet> createState() => _NewCallModalSheetState();
}

class _NewCallModalSheetState extends State<NewCallModalSheet> {
  final ChatController controller = Get.put(ChatController());

  final List<Map<dynamic, String>> contactsList = [
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery1.png",
    },
    {
      "name": "John Travis",
      "pic": "",
    },
    {
      "name": "William Malt",
      "pic": "assets/images/gallery3.png",
    },
    {
      "name": "Carlos Gomes",
      "pic": "assets/images/gallery4.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery5.png",
    },
    {
      "name": "Bob Mills",
      "pic": "assets/images/gallery6.png",
    },
    {
      "name": "Amelie Smith",
      "pic": "assets/images/gallery8.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery1.png",
    },
    {
      "name": "John Travis",
      "pic": "assets/images/gallery2.png",
    },
    {
      "name": "William Malt",
      "pic": "assets/images/gallery3.png",
    },
    {
      "name": "Carlos Gomes",
      "pic": "assets/images/gallery4.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery5.png",
    },
    {
      "name": "Bob Mills",
      "pic": "assets/images/gallery6.png",
    },
    {
      "name": "Amelie Smith",
      "pic": "assets/images/gallery8.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery1.png",
    },
    {
      "name": "John Travis",
      "pic": "assets/images/gallery2.png",
    },
    {
      "name": "William Malt",
      "pic": "assets/images/gallery3.png",
    },
    {
      "name": "Carlos Gomes",
      "pic": "assets/images/gallery4.png",
    },
    {
      "name": "Joy Bright",
      "pic": "assets/images/gallery5.png",
    },
    {
      "name": "Bob Mills",
      "pic": "assets/images/gallery6.png",
    },
    {
      "name": "Amelie Smith",
      "pic": "assets/images/gallery8.png",
    },
  ];

  @override
  void initState() {
    super.initState();
    controller.initializeCheckboxList(contactsList.length);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.95,
      child: Padding(
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
                profileHeadingwhite(text: 'New call'),
                const crossIcon(),
              ],
            ),
            verticalGap(20),
            TopicTextField(
              prefixIcon: Icons.search,
              hintText: 'Search...',
            ),
            verticalGap(20),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    backgroundColor: TopicColor.bgchatGrey,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30.0)),
                    ),
                    isScrollControlled: true,
                    builder: (BuildContext builder) {
                      return SelectNewGroupCallModalSheet(
                          contactsList: contactsList, controller: controller);
                    });
              },
              child: selectNewChatContainer(
                text: 'New group call',
                icon: Row(
                  children: [
                    Image.asset(
                      'assets/images/goup_icon.png',
                      width: 21,
                      height: 20,
                    ),
                    horizontalGap(10),
                  ],
                ),
              ),
            ),
            verticalGap(20),
            Expanded(
              child: ListView.builder(
                  itemCount: contactsList.length,
                  itemBuilder: (context, index) {
                    final callback = contactsList[index];
                    return AddContactListContainer(
                      name: callback['name']!,
                      pic: callback['pic']!,
                    );
                  }),
            ),
            //AddContactListContainer(name: 'Anne Wilson'),
          ],
        ),
      ),
    );
  }
}

class SelectNewGroupCallModalSheet extends StatelessWidget {
  SelectNewGroupCallModalSheet({
    super.key,
    required this.contactsList,
    required this.controller,
    this.inviteCall = false,
  });
  final bool inviteCall;
  final List<Map<dynamic, String>> contactsList;
  final ChatController controller;
  final CallController callController = Get.put(CallController());
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
                  itemCount: contactsList.length,
                  itemBuilder: (context, index) {
                    final callback = contactsList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                callback['pic'] == ""
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          "assets/images/dp_default.png",
                                          width: 35,
                                          height: 35,
                                        ),
                                      )
                                    : ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          callback['pic']!,
                                          width: 35,
                                          height: 35,
                                        ),
                                      ),
                                horizontalGap(10),
                                GeneralTextwhite(
                                  text: callback['name']!,
                                )
                              ],
                            ),
                          ),
                          Obx(
                            () => GestureDetector(
                              onTap: () {
                                callController.enablebutton.value = true;

                                controller.toggleChecked(index);
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: controller.isCheckedList[index]
                                        ? TopicColor.primary
                                        : Colors.grey,
                                    width: 2,
                                  ),
                                  color: controller.isCheckedList[index]
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
          Obx(
            () => Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: inviteCall
                  ? TopicLoaderButton(
                      btnText: 'Invite',
                      onTap: () async {
                        callController.enablebutton.value ? Get.back() : null;
                      },
                      color: callController.enablebutton.value
                          ? TopicColor.primary
                          : TopicColor.lightGrey,
                    )
                  : Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                          onTap: () => callController.enablebutton.value
                              ? Get.to(() => CallingView())
                              : null,
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: callController.enablebutton.value
                                  ? TopicColor.primary
                                  : TopicColor.lightGrey,
                            ),
                            child: Center(
                                child: Image.asset(
                              'assets/images/call_unselected.png',
                              width: 17,
                              height: 17,
                            )),
                          ),
                        )),
                        horizontalGap(10),
                        Expanded(
                            child: GestureDetector(
                          onTap: () => callController.enablebutton.value
                              ? Get.to(() => CallingView(
                                    videoCall: true,
                                  ))
                              : null,
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: callController.enablebutton.value
                                  ? TopicColor.primary
                                  : TopicColor.lightGrey,
                            ),
                            child: Center(
                                child: Image.asset(
                              'assets/images/camera2.png',
                              width: 21,
                              height: 17,
                            )),
                          ),
                        )),
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}

class AddContactListContainer extends StatelessWidget {
  const AddContactListContainer({
    super.key,
    required this.name,
    this.pic = "",
  });

  final String name;
  final String? pic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              pic == ""
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/images/dp_default.png",
                        width: 35,
                        height: 35,
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        pic!,
                        width: 35,
                        height: 35,
                      ),
                    ),
              horizontalGap(12),
              GeneralTextwhite(text: name)
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () => Get.to(() => CallingView(
                      videoCall: true,
                    )),
                child: Image.asset(
                  'assets/images/camera2.png',
                  width: 21,
                  height: 17,
                ),
              ),
              horizontalGap(12),
              GestureDetector(
                onTap: () => Get.to(() => CallingView()),
                child: Image.asset(
                  'assets/images/call_unselected.png',
                  width: 21,
                  height: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
