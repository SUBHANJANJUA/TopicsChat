import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/view/home/call/call_controller/call_controller.dart';
import 'package:topics/view/home/chat/chatTabView.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class SearchMainView extends StatelessWidget {
  SearchMainView({super.key});
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
                  const HeadingTextAppBar(text: 'Search')
                ],
              ),
            ),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                child: Container(
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
                    indicatorPadding: EdgeInsets.symmetric(horizontal: -15),
                    tabs: const [
                      Tab(text: 'Users'),
                      Tab(text: 'Channels'),
                    ],
                  ),
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(56),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TopicTextField(
                        prefixIcon: Icons.search,
                        hintText: 'Search...',
                      ),
                    ),
                    horizontalGap(10),
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
                              return Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SimpleWhitetextBold(
                                          text: 'Filter',
                                          size: 18,
                                        ),
                                        crossIcon(
                                          size: 30,
                                        )
                                      ],
                                    ),
                                    verticalGap(35),
                                    Obx(
                                      () => Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GeneralTextwhite(
                                            text: 'Communities',
                                            icon: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/topics_unselected.png',
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
                                            inactiveTrackColor:
                                                Colors.grey.shade400,
                                          )
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: TopicColor.lightGrey,
                                    ),
                                    Obx(
                                      () => Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GeneralTextwhite(
                                            text: 'Channels',
                                            icon: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/channel_icon.png',
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
                                            inactiveTrackColor:
                                                Colors.grey.shade400,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: const Icon(
                        Icons.filter_list,
                        color: TopicColor.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ),
            )),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: controller.tabController,
                children: [SearchUserView(), SearchChannelView()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchUserView extends StatelessWidget {
  SearchUserView({super.key});
  final List<Map<String, dynamic>> channelList = [
    {
      "title": 'Beast Channel',
      'subtitle': 'by @mr.beast ',
      'dp': 'assets/images/gallery2.png',
    },
    {
      "title": 'Life of Taylor',
      'subtitle': 'by @t.swift ',
      'dp': 'assets/images/gallery3.png',
    },
    {
      "title": 'Geopolitics Insights',
      'subtitle': 'by @geo.online ',
      'dp': 'assets/images/gallery5.png',
    },
    {
      "title": 'Beast Channel',
      'subtitle': 'by @mr.beast ',
      'dp': 'assets/images/gallery2.png',
    },
    {
      "title": 'Life of Taylor',
      'subtitle': 'by @t.swift ',
      'dp': 'assets/images/gallery3.png',
    },
    {
      "title": 'Geopolitics Insights',
      'subtitle': 'by @geo.online ',
      'dp': 'assets/images/gallery5.png',
    },
    {
      "title": 'Beast Channel',
      'subtitle': 'by @mr.beast ',
      'dp': 'assets/images/gallery2.png',
    },
    {
      "title": 'Life of Taylor',
      'subtitle': 'by @t.swift ',
      'dp': 'assets/images/gallery3.png',
    },
    {
      "title": 'Geopolitics Insights',
      'subtitle': 'by @geo.online ',
      'dp': 'assets/images/gallery5.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TopicColor.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: channelList.length,
                itemBuilder: (context, index) {
                  final callback = channelList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SearchUserListContainer(
                      title: callback['title']!,
                      subtitle: callback['subtitle']!,
                      dp: callback['dp']!,
                    ),
                  );
                },
              )),
            ],
          ),
        ));
  }
}

class SearchChannelView extends StatelessWidget {
  SearchChannelView({super.key});
  final List<Map<dynamic, String>> CategoryChannel = [
    {"name": "football"},
    {"name": "Ronaldo"},
    {"name": "world"},
    {"name": "art"},
    {"name": "politics"},
    {"name": "football"},
    {"name": "Ronaldo"},
    {"name": "world"},
    {"name": "art"},
  ];
  final List<Map<String, dynamic>> channelList = [
    {
      "title": 'Beast Channel',
      'subtitle': 'by @mr.beast ',
      'dp': 'assets/images/gallery2.png',
      'sponsor': true,
      'follow': false,
      'member': '12K',
      'verify': true,
    },
    {
      "title": 'Life of Taylor',
      'subtitle': 'by @t.swift ',
      'dp': 'assets/images/gallery3.png',
      'sponsor': true,
      'follow': true,
      'member': '13K',
      'verify': true,
    },
    {
      "title": 'Geopolitics Insights',
      'subtitle': 'by @geo.online ',
      'dp': 'assets/images/gallery5.png',
      'sponsor': false,
      'follow': true,
      'member': '12K',
      'verify': false,
    },
    {
      "title": 'Beast Channel',
      'subtitle': 'by @mr.beast ',
      'dp': 'assets/images/gallery2.png',
      'sponsor': true,
      'follow': false,
      'member': '12K',
      'verify': false,
    },
    {
      "title": 'Life of Taylor',
      'subtitle': 'by @t.swift ',
      'dp': 'assets/images/gallery3.png',
      'sponsor': true,
      'follow': true,
      'member': '13K',
      'verify': false,
    },
    {
      "title": 'Geopolitics Insights',
      'subtitle': 'by @geo.online ',
      'dp': 'assets/images/gallery5.png',
      'sponsor': false,
      'follow': true,
      'member': '12K',
      'verify': false,
    },
    {
      "title": 'Beast Channel',
      'subtitle': 'by @mr.beast ',
      'dp': 'assets/images/gallery2.png',
      'sponsor': true,
      'follow': false,
      'member': '12K',
      'verify': false,
    },
    {
      "title": 'Life of Taylor',
      'subtitle': 'by @t.swift ',
      'dp': 'assets/images/gallery3.png',
      'sponsor': true,
      'follow': true,
      'member': '13K',
      'verify': false,
    },
    {
      "title": 'Geopolitics Insights',
      'subtitle': 'by @geo.online ',
      'dp': 'assets/images/gallery5.png',
      'sponsor': false,
      'follow': true,
      'member': '12K',
      'verify': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TopicColor.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              verticalGap(10),
              SizedBox(
                height: 20,
                child: ListView.builder(
                  itemCount: CategoryChannel.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final callback = CategoryChannel[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: selectedContactGroupContainer(
                          color: TopicColor.lightGrey2,
                          name: callback['name']!),
                    );
                  },
                ),
              ),
              verticalGap(10),
              Expanded(
                  child: ListView.builder(
                itemCount: channelList.length,
                itemBuilder: (context, index) {
                  final callback = channelList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SearchChannelListContainer(
                        title: callback['title']!,
                        subtitle: callback['subtitle']!,
                        dp: callback['dp']!,
                        follow: callback['follow']!,
                        sponsor: callback['sponsor']!,
                        member: callback['member']!,
                        verify: callback['verify']!),
                  );
                },
              )),
            ],
          ),
        ));
  }
}

class SearchUserListContainer extends StatelessWidget {
  const SearchUserListContainer({
    super.key,
    this.dp = 'assets/images/dp_default.png',
    required this.title,
    required this.subtitle,
  });
  final String? dp;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: TopicColor.bgchatGrey,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.horizontal(left: Radius.circular(10)),
            child: Image.asset(
              dp == '' ? 'assets/images/dp_default.png' : dp!,
              width: 60,
              height: 60,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GeneralTextwhite(
                        text: title,
                        weight: FontWeight.w600,
                      ),
                      GeneralTextGrey(
                        text: subtitle,
                        size: 12,
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: () => Get.to(() => ChatScreenView()),
                      child: GeneralTextPrimary(text: 'Chat')),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchChannelListContainer extends StatelessWidget {
  SearchChannelListContainer({
    super.key,
    this.dp = 'assets/images/dp_default.png',
    required this.title,
    required this.subtitle,
    this.follow = false,
    this.sponsor = false,
    this.verify = false,
    this.member = "0",
  });
  final String? dp;
  final String title;
  final String subtitle;
  final bool? follow;
  final bool? sponsor;
  final bool? verify;
  final String? member;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: TopicColor.bgchatGrey,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.horizontal(left: Radius.circular(10)),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Image.asset(
                  dp == '' ? 'assets/images/dp_default.png' : dp!,
                  width: 80,
                  height: 80,
                ),
                sponsor!
                    ? Container(
                        height: 20,
                        width: 80,
                        color: TopicColor.white.withOpacity(0.3),
                        child: const Center(
                          child: SimpleWhitetextBold(
                            text: 'sponsored',
                            size: 12,
                          ),
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GeneralTextwhite(
                            text: title,
                            weight: FontWeight.w600,
                          ),
                          follow!
                              ? const GeneralTextPrimary(text: 'Follow')
                              : const GeneralTextPrimary(
                                  text: 'Following',
                                  color: TopicColor.primaryGrey,
                                )
                        ],
                      ),
                      Row(
                        children: [
                          GeneralTextPrimary(
                            text: subtitle,
                            color: TopicColor.primaryGrey,
                            weight: FontWeight.w600,
                          ),
                          verify!
                              ? Image.asset(
                                  'assets/images/star_primary.png',
                                  width: 10,
                                  height: 10,
                                )
                              : const SizedBox.shrink()
                        ],
                      )
                    ],
                  ),
                  GeneralTextGrey(
                    text: '$member members',
                    size: 12,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
