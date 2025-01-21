import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/chat/chat_controller/chat_controller.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class FilePicDocsView extends StatelessWidget {
  FilePicDocsView({super.key});
  final ChatController controller = Get.put(ChatController());
  final List<String> imgURL = [
    'assets/images/gallery1.png',
    'assets/images/gallery2.png',
    'assets/images/gallery3.png',
    'assets/images/gallery4.png',
    'assets/images/gallery5.png',
    'assets/images/gallery6.png',
    'assets/images/gallery7.png',
    'assets/images/gallery8.png',
    'assets/images/gallery9.png',
    'assets/images/gallery10.png',
    'assets/images/gallery12.png',
    'assets/images/gallery13.png',
    'assets/images/gallery14.png',
    'assets/images/gallery15.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        title: Container(
          height: 27,
          // width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(25),
          ),
          child: TabBar(
            controller: controller.tabController2,
            indicator: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.circular(25),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[400],
            tabs: const [
              Tab(text: 'Files'),
              Tab(text: 'Links'),
              Tab(text: 'Docs'),
            ],
          ),
        ),
        titleSpacing: 0.0,
        leading: const backIconButtonLeading(),
        actions: [horizontalGap(55)],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GeneralText(text: 'Content from'),
              horizontalGap(10),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: TopicColor.bgchatGrey,
                      context: context,
                      // isScrollControlled: true,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  profileHeadingwhite(text: 'Content from'),
                                  const crossIcon(),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.selectedOption.value = 'All tabs';
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GeneralTextwhite(
                                      text: 'All tabs',
                                      icon: const SizedBox(height: 2),
                                    ),
                                    Obx(() => controller.selectedOption.value ==
                                            'All tabs'
                                        ? Icon(Icons.check,
                                            size: 30, color: TopicColor.primary)
                                        : const SizedBox()),
                                  ],
                                ),
                              ),
                            ),
                            Divider(color: TopicColor.lightGrey),
                            GestureDetector(
                              onTap: () {
                                controller.selectedOption.value =
                                    'Tab “General”';
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GeneralTextwhite(
                                      text: 'Tab “General”',
                                      icon: const SizedBox(height: 2),
                                    ),
                                    Obx(() => controller.selectedOption.value ==
                                            'Tab “General”'
                                        ? Icon(Icons.check,
                                            size: 30, color: TopicColor.primary)
                                        : const SizedBox()),
                                  ],
                                ),
                              ),
                            ),
                            Divider(color: TopicColor.lightGrey),
                            GestureDetector(
                              onTap: () {
                                controller.selectedOption.value =
                                    'Tab “Roomies”';
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GeneralTextwhite(
                                      text: 'Tab “Roomies”',
                                      icon: const SizedBox(height: 2),
                                    ),
                                    Obx(() => controller.selectedOption.value ==
                                            'Tab “Roomies”'
                                        ? Icon(Icons.check,
                                            size: 30, color: TopicColor.primary)
                                        : const SizedBox()),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                },
                child: Row(
                  children: const [
                    GeneralTextPrimary(text: 'All Tabs'),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: TopicColor.primary,
                      size: 30,
                    )
                  ],
                ),
              ),
              // horizontalGap(5),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: controller.tabController2,
        children: [
          FilesView(imgURL: imgURL),
          LinksView(),
          DocsView(),
        ],
      ),
    ));
  }
}

class FilesView extends StatelessWidget {
  const FilesView({
    super.key,
    required this.imgURL,
  });

  final List<String> imgURL;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        // crossAxisSpacing: 8.0,
        // mainAxisSpacing: 8.0,
      ),
      itemCount: imgURL.length,
      itemBuilder: (context, index) {
        return Image.asset(
          imgURL[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}

class LinksView extends StatelessWidget {
  LinksView({super.key});
  final List<Map<dynamic, String>> LinkData = [
    {
      "subtitle":
          " https://www.ikea.com/pt/pt/p/ivar-armario-c-portas-verde-acinzentado-malha-50531252/",
      "title": "IVAR Armário c/portas, verde acinzentado malha",
      "dp": "assets/images/Profile_link.png",
    },
    {
      "subtitle":
          "https://www.ikea.com/pt/pt/p/ivar-armario-c-portas-verde-acinzentado-malha-50531252/",
      "title": "IVAR Armário c/portas, verde acinzentado malha",
      "dp": "assets/images/Profile_link.png",
    },
    {
      "subtitle":
          "https://www.ikea.com/pt/pt/p/ivar-armario-c-portas-verde-acinzentado-malha-50531252/",
      "title": "IVAR Armário c/portas, verde acinzentado malha",
      "dp": "assets/images/Profile_link.png",
    },
    {
      "subtitle":
          "https://www.ikea.com/pt/pt/p/ivar-armario-c-portas-verde-acinzentado-malha-50531252/",
      "title": "IVAR Armário c/portas, verde acinzentado malha",
      "dp": "assets/images/Profile_link.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Expanded(
        child: ListView.builder(
          itemCount: LinkData.length,
          itemBuilder: (context, index) {
            final callback = LinkData[index];
            return Links_media_container(
                dp: callback['dp']!,
                title: callback['title']!,
                subtitle: callback['subtitle']!);
          },
        ),
      ),
    );
  }
}

class Links_media_container extends StatelessWidget {
  Links_media_container({
    super.key,
    required this.dp,
    required this.title,
    required this.subtitle,
  });
  final String dp;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 98,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: TopicColor.bgchatGrey),
        child: Row(
          children: [
            Image.asset(dp),
            horizontalGap(10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                        color: TopicColor.lightGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  // profileTextwhite(
                  //     text: 'IVAR Armário c/portas, verde acinzentado malha'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DocsView extends StatelessWidget {
  DocsView({super.key});
  final List<Map<dynamic, String>> docsData = [
    {
      "title": "hodlscreens.pdf",
      "subtitle": "290KB - pdf",
    },
    {
      "title": "squery.xlsx",
      "subtitle": "290KB - pdf290KB - xlsx",
    },
    {
      "title": "cards2.pdf",
      "subtitle": "290KB - pdf",
    },
    {
      "title": "cards1.zip",
      "subtitle": "290KB - zip",
    },
    {
      "title": "234165210EE2_2184486A.pdf",
      "subtitle": "2290KB - pdf",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: docsData.length,
        itemBuilder: (context, index) {
          final callback = docsData[index];
          return Docs_media_Container(
              title: callback['title']!, subtitle: callback['subtitle']!);
        });

    //  Docs_media_Container(
    //   title: 'hodlscreens.pdf',
    //   subtitle: '290KB - pdf',
    // );
  }
}

class Docs_media_Container extends StatelessWidget {
  const Docs_media_Container({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: docstext(title: title, subtitle: subtitle),
        ),
        Divider(
          color: TopicColor.lightGrey,
        ),
      ],
    );
  }
}

class docstext extends StatelessWidget {
  const docstext({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon = Icons.insert_drive_file_outlined,
  });

  final String title;
  final String subtitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: TopicColor.lightGrey,
          size: 20,
        ),
        horizontalGap(15),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GeneralTextwhite(
              text: title,
              weight: FontWeight.w600,
            ),
            GeneralTextGrey(text: subtitle)
          ],
        )
      ],
    );
  }
}
