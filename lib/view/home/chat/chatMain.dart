import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';

import 'package:topics/view/home/chat/chatChannelView.dart';
import 'package:topics/view/home/chat/chatReplyTabView.dart';
import 'package:topics/view/home/chat/chatTabView.dart';
import 'package:topics/view/home/chat/otherView.dart';
import 'package:topics/widget/Chat_Widgets/ModalSheet_Widgets.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

import 'chat_controller/chat_controller.dart';

class ChatMainView extends StatefulWidget {
  ChatMainView({super.key});

  @override
  State<ChatMainView> createState() => _ChatMainViewState();
}

class _ChatMainViewState extends State<ChatMainView> {
  final ChatController chatController = Get.put(ChatController());

  final List<Map<String, dynamic>> contactList = [
    {
      "Name": "Anne Wilson",
      "dp": "assets/images/dp1.png",
    },
    {
      "Name": "Amelie Smith",
      "dp": "assets/images/dp2.png",
    },
    {
      "Name": "Bob Mills",
      "dp": "assets/images/dp3.png",
    },
    {
      "Name": "Carlos Gomes",
      "dp": "assets/images/dp4.png",
    },
    {
      "Name": "William Malt",
      "dp": "assets/images/dp5.png",
    },
    {
      "Name": "John Travis",
      "dp": "assets/images/dp4.png",
    },
    {
      "Name": "Joy Bright",
      "dp": "assets/images/dp1.png",
    },
    {
      "Name": "Anne Wilson",
      "dp": "assets/images/dp1.png",
    },
    {
      "Name": "Amelie Smith",
      "dp": "assets/images/dp2.png",
    },
    {
      "Name": "Bob Mills",
      "dp": "assets/images/dp3.png",
    },
    {
      "Name": "Carlos Gomes",
      "dp": "assets/images/dp4.png",
    },
    {
      "Name": "William Malt",
      "dp": "assets/images/dp5.png",
    },
    {
      "Name": "John Travis",
      "dp": "assets/images/dp4.png",
    },
    {
      "Name": "Joy Bright",
      "dp": "assets/images/dp1.png",
    },
  ];

  @override
  void initState() {
    super.initState();
    chatController.initializeCheckboxList(contactList.length);
  }

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
              const HeadingTextAppBar(text: 'Chat')
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
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
                        height: context.height * 0.95,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 4,
                                    height: 5,
                                  ),
                                  profileHeadingwhite(text: 'New message'),
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
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(30.0)),
                                      ),
                                      isScrollControlled: true,
                                      builder: (BuildContext builder) {
                                        return SizedBox(
                                          height: context.height * 0.95,
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const backIconButtonLeading(),
                                                        profileHeadingwhite(
                                                            text:
                                                                'New contact'),
                                                        const crossIcon(),
                                                      ],
                                                    ),
                                                    verticalGap(30),
                                                    const GeneralText(
                                                      text: 'Name',
                                                    ),
                                                    verticalGap(5),
                                                    TopicTextField(),
                                                    verticalGap(15),
                                                    const GeneralText(
                                                      text: 'Last name',
                                                    ),
                                                    verticalGap(5),
                                                    TopicTextField(),
                                                    verticalGap(15),
                                                    const GeneralText(
                                                      text: 'Country code',
                                                    ),
                                                    verticalGap(5),
                                                    TopicTextField(),
                                                    verticalGap(15),
                                                    const GeneralText(
                                                      text: 'Phone number',
                                                    ),
                                                    verticalGap(5),
                                                    TopicTextField(),
                                                    verticalGap(70),
                                                    GeneralTextPrimary(
                                                        text:
                                                            'Add from Topics QR Code',
                                                        icon: Image.asset(
                                                          'assets/images/qr_primary.png',
                                                          width: 20,
                                                          height: 20,
                                                        ))
                                                  ],
                                                ),
                                                TopicLoaderButton(
                                                    color: TopicColor.primary,
                                                    btnText: 'Add contact',
                                                    onTap: () async {})
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: selectNewChatContainer(
                                  text: 'New contact',
                                  icon: Row(
                                    children: [
                                      Icon(
                                        Icons.person_outline,
                                        color: TopicColor.white,
                                        size: 20,
                                      ),
                                      horizontalGap(10),
                                    ],
                                  ),
                                ),
                              ),
                              verticalGap(10),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      backgroundColor: TopicColor.bgchatGrey,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(30.0)),
                                      ),
                                      isScrollControlled: true,
                                      builder: (BuildContext builder) {
                                        return SelectNewGroupModalSheet(
                                            contactList: contactList,
                                            chatController: chatController);
                                      });
                                },
                                child: selectNewChatContainer(
                                  text: 'New group',
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
                              verticalGap(10),
                              GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      backgroundColor: TopicColor.bgchatGrey,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(30.0)),
                                      ),
                                      isScrollControlled: true,
                                      builder: (BuildContext builder) {
                                        return SizedBox(
                                          height: context.height * 0.95,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const SizedBox(
                                                            height: 1,
                                                          ),
                                                          profileHeadingwhite(
                                                              text:
                                                                  'New channel'),
                                                          const crossIcon(),
                                                        ],
                                                      ),
                                                      verticalGap(30),
                                                      Stack(
                                                          alignment:
                                                              AlignmentDirectional
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 147,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            11),
                                                                color:
                                                                    TopicColor
                                                                        .bgGrey,
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 35,
                                                              height: 35,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: TopicColor
                                                                    .lightGrey,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child: Icon(
                                                                Icons
                                                                    .camera_alt_outlined,
                                                                color:
                                                                    TopicColor
                                                                        .white,
                                                                size: 25,
                                                              ),
                                                            ),
                                                          ]),
                                                      verticalGap(20),
                                                      const GeneralText(
                                                        text: 'Channel name',
                                                      ),
                                                      verticalGap(5),
                                                      TopicTextField(),
                                                      verticalGap(15),
                                                      const GeneralText(
                                                        text: 'Tags',
                                                      ),
                                                      verticalGap(5),
                                                      TopicTextField(),
                                                      verticalGap(15),
                                                      const GeneralText(
                                                        text: 'Description',
                                                      ),
                                                      verticalGap(5),
                                                      // TopicTextField(
                                                      //   maxLine: 5,
                                                      // ),
                                                      TextFormField(
                                                        maxLines: 7,
                                                        style: TextStyle(
                                                          color:
                                                              TopicColor.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  color: TopicColor.lightGrey,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const textWhiteBold14(
                                                        text: 'Private channel',
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'You’ll receive a notification to accept the users and to allow them to access the channel',
                                                              style: TextStyle(
                                                                  color: TopicColor
                                                                      .lightGrey,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 14),
                                                            ),
                                                          ),
                                                          Obx(
                                                            () => Switch(
                                                              value:
                                                                  chatController
                                                                      .isSwitched3
                                                                      .value,
                                                              onChanged:
                                                                  (value) {
                                                                chatController
                                                                    .toggleSwitch3(
                                                                        value);
                                                              },
                                                              activeColor:
                                                                  TopicColor
                                                                      .primary,
                                                              inactiveThumbColor:
                                                                  Colors.white,
                                                              activeTrackColor:
                                                                  TopicColor
                                                                      .white,
                                                              inactiveTrackColor:
                                                                  Colors.grey
                                                                      .shade400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      verticalGap(15),
                                                      TopicLoaderButton(
                                                          color: TopicColor
                                                              .primary,
                                                          btnText:
                                                              'Create channel',
                                                          onTap: () async {})
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: selectNewChatContainer(
                                  text: 'New channel',
                                  icon: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/channel_icon.png',
                                        width: 21,
                                        height: 20,
                                      ),
                                      horizontalGap(10),
                                    ],
                                  ),
                                ),
                              ),
                              verticalGap(10),
                              selectNewChatContainer(
                                text: 'New topic',
                                icon: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/topics_unselected.png',
                                      width: 21,
                                      height: 20,
                                    ),
                                    horizontalGap(10),
                                  ],
                                ),
                              ),
                              verticalGap(5),
                              Expanded(
                                child: ListView.builder(
                                    itemCount: contactList.length,
                                    itemBuilder: (context, index) {
                                      final selectItem = contactList[index];
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15.0),
                                        child: newListContact(
                                            name: selectItem['Name'],
                                            dp: selectItem['dp']),
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 30,
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
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                // dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                physics: NeverScrollableScrollPhysics(),
                isScrollable: true,
                controller: chatController.tabController,
                indicator: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(25),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey[400],
                indicatorPadding: const EdgeInsets.symmetric(horizontal: -20),
                tabs: [
                  Tab(text: '2Reply'),
                  Tab(text: 'Chat'),
                  Tab(text: 'Channels'),
                  Tab(text: 'Others'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: chatController.tabController,
                children: [
                  ReplyView(),
                  chatView(),
                  channelView(),
                  const otherView(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}


// Dismissible(
//                   key: ValueKey(callData['id'] ?? index),

//                   direction:
//                       DismissDirection.horizontal, // Allow both directions
//                   onDismissed: (direction) {
//                     if (direction == DismissDirection.startToEnd) {
//                       // Pin action
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('${callData['title']} pinned'),
//                         ),
//                       );
//                     } else if (direction == DismissDirection.endToStart) {
//                       // Delete action
//                       chatList.removeAt(index);
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('${callData['title']} deleted'),
//                         ),
//                       );
//                     }
//                   },
//                   background: Container(
//                     color: Colors.blue,
//                     alignment: Alignment.centerLeft,
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       children: [
//                         Image.asset(
//                           'assets/images/dp1.png',
//                           height: 24,
//                           width: 24,
//                           color: Colors.white,
//                         ),
//                         const SizedBox(width: 8),
//                         const Text(
//                           'Pin',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                   secondaryBackground: Container(
//                     color: Colors.red,
//                     alignment: Alignment.centerRight,
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         const Text(
//                           'Delete',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         const SizedBox(width: 8),
//                         Image.asset(
//                           'assets/images/dp2.png',
//                           height: 24,
//                           width: 24,
//                           color: Colors.white,
//                         ),
//                       ],
//                     ),
//                   ),

//                   child: ChatListReplyContainer(
//                     dp: callData['dp'],
//                     title: callData['title'],
//                     subtitle: callData['subtitle'],
//                     time: callData['time'],
//                   ),
//                 );
