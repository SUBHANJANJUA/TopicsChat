import 'package:flutter/material.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';

class ReplyView extends StatelessWidget {
  ReplyView({super.key});
  final List<Map<String, dynamic>> chatList = [
    {
      "dp": "assets/images/Cdp1.png",
      "title": "Alexander Gobbs",
      "subtitle": "That sounds cool. What do you think...",
      "time": "4 min",
    },
    {
      "dp": "assets/images/Cdp2.png",
      "title": "Isabella Hernandez",
      "subtitle": "You Rock!!! 🚀🚀",
      "time": "23 min",
    },
    {
      "dp": "assets/images/Cdp3.png",
      "title": "Joy Bright",
      "subtitle": "Hi! vel laoreet metus, nec congue ex. ",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp4.png",
      "title": "Carlos Gomes",
      "subtitle": "Pellentesque pharetra mi neque sp...",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp5.png",
      "title": "Javier Muli",
      "subtitle": "Pellentesque pharetra mi neque sp...",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp2.png",
      "title": "Isabella Hernandez",
      "subtitle": "You Rock!!! 🚀🚀",
      "time": "23 min",
    },
    {
      "dp": "assets/images/Cdp1.png",
      "title": "Joy Bright",
      "subtitle": "Hi! vel laoreet metus, nec congue ex. ",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp4.png",
      "title": "Javier Muli",
      "subtitle": "Pellentesque pharetra mi neque sp... ",
      "time": "2h",
    },
    {
      "dp": "assets/images/Cdp5.png",
      "title": "Javier Muli",
      "subtitle": "Pellentesque pharetra mi neque sp...",
      "time": "2h",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalGap(10),
        Expanded(
          child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                final callData = chatList[index];
                return ChatListReplyContainer(
                  dp: callData['dp'],
                  title: callData['title'],
                  subtitle: callData['subtitle'],
                  time: callData['time'],
                  index: index,
                );
              }),
        ),
      ],
    );
  }
}
