import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/topic_widgets/TopicViewContainer.dart';

class TopicsMainView extends StatelessWidget {
  TopicsMainView({super.key});
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
  final List<Map<String, dynamic>> TopicChannels = [
    {
      "dp": "assets/images/topic1.png",
      "title": "Israel and Palestine",
      "creater": "@joybbright94",
      "time": "1h14m",
      "member": "5/7"
    },
    {
      "dp": "assets/images/gallery2.png",
      "title": "Paris Fashion Week",
      "creater": "@joybbright94",
      "time": "1h14m",
      "member": "5/7"
    },
    {
      "dp": "assets/images/gallery3.png",
      "title": "Anime",
      "creater": "@joybbright94",
      "time": "1h14m",
      "member": "5/7"
    },
    {
      "dp": "assets/images/gallery4.png",
      "title": "Gaming",
      "creater": "@joybbright94",
      "time": "1h14m",
      "member": "5/7"
    },
    {
      "dp": "assets/images/topic1.png",
      "title": "A really big text to simulate how it works",
      "creater": "@joybbright94",
      "time": "1h14m",
      "member": "5/7"
    },
    {
      "dp": "assets/images/gallery2.png",
      "title": "Gaming",
      "creater": "@joybbright94",
      "time": "1h14m",
      "member": "5/7"
    },
    {
      "dp": "assets/images/gallery3.png",
      "title": "Anime",
      "creater": "@joybbright94",
      "time": "1h14m",
      "member": "5/7"
    },
    {
      "dp": "assets/images/gallery4.png",
      "title": "Gaming",
      "creater": "@joybbright94",
      "time": "1h14m",
      "member": "5/7"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset(
            'assets/images/logo_simple.png',
            width: 36,
            height: 36,
          ),
        ),
        title: HeadingTextAppBar(text: 'Topics'),
        //titleSpacing: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.add_circle_outline_outlined,
              color: TopicColor.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TopicTextField(
              prefixIcon: Icons.search,
              hintText: "Search....",
            ),
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
                        color: TopicColor.lightGrey2, name: callback['name']!),
                  );
                },
              ),
            ),
            verticalGap(20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 8, // Space between columns
                  mainAxisSpacing: 8, // Space between rows
                  childAspectRatio: 2 / 1.6, // Width to height ratio
                ),
                itemCount: TopicChannels.length,
                itemBuilder: (context, index) {
                  final callback = TopicChannels[index];
                  return TopicViewContainer(callback: callback);
                },
              ),
            )

            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: 140,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: TopicColor.primary,
            //         ),
            //       ),
            //     ),
            //     horizontalGap(10),
            //     Expanded(
            //       child: Container(
            //         height: 140,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: TopicColor.primary,
            //         ),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    ));
  }
}
