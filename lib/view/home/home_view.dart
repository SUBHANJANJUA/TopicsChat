import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/view/home/call/callMain.dart';

import 'package:topics/view/home/chat/chatMain.dart';
import 'package:topics/view/home/feed/feedMain.dart';
import 'package:topics/view/home/search/searchMain.dart';
import 'package:topics/view/home/topics/topicsMain.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeView();
}

class BottomNavController extends GetxController {
  var currentIndex = 0.obs;

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}

class _HomeView extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());
    final List<Widget> pages = [
      FeedMainView(),
      SearchMainView(),
      TopicsMainView(),
      ChatMainView(),
      CallsMainView(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: TopicColor.black,
        body: Obx(() => pages[controller.currentIndex.value]),
        bottomNavigationBar: Obx(
          () => Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: TopicColor.black,
                  spreadRadius: 9,
                  blurRadius: 20,
                  offset: Offset(0, -9),
                )
              ],
            ),
            child: BottomNavigationBar(
                backgroundColor: Colors.black,
                currentIndex: controller.currentIndex.value,
                onTap: (index) => controller.changeTabIndex(index),
                showUnselectedLabels: true,
                unselectedItemColor: TopicColor.white,
                selectedItemColor: TopicColor.white,
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 12),
                unselectedLabelStyle: const TextStyle(fontSize: 12),
                type: BottomNavigationBarType.fixed,
                enableFeedback: false,
                items: [
                  BottomNavigationBarItem(
                      icon: controller.currentIndex.value == 0
                          ? Image.asset(
                              'assets/images/feed_selected.png',
                              width: 22,
                              height: 24,
                            )
                          : Image.asset(
                              'assets/images/feed_unselected.png',
                              width: 22,
                              height: 24,
                            ),
                      label: 'Feed'),
                  BottomNavigationBarItem(
                    icon: controller.currentIndex.value == 1
                        ? Image.asset(
                            'assets/images/search_selected.png',
                            width: 24,
                            height: 24,
                          )
                        : Image.asset(
                            'assets/images/search_unselected.png',
                            width: 24,
                            height: 24,
                          ),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.currentIndex.value == 2
                        ? Image.asset(
                            'assets/images/topics_selected.png',
                            width: 24,
                            height: 24,
                          )
                        : Image.asset(
                            'assets/images/topics_unselected.png',
                            width: 24,
                            height: 24,
                          ),
                    label: 'Topics',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.currentIndex.value == 3
                        ? Image.asset(
                            'assets/images/chat_selected.png',
                            width: 24,
                            height: 24,
                          )
                        : Image.asset(
                            'assets/images/chat_unselected.png',
                            width: 24,
                            height: 24,
                          ),
                    label: 'Chat',
                  ),
                  BottomNavigationBarItem(
                    icon: controller.currentIndex.value == 4
                        ? Image.asset(
                            'assets/images/call_selected.png',
                            width: 24,
                            height: 24,
                          )
                        : Image.asset(
                            'assets/images/call_unselected.png',
                            width: 24,
                            height: 24,
                          ),
                    label: 'Calls',
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
