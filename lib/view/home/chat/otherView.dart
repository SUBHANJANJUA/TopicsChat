import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_text_field.dart';
import 'package:topics/view/home/chat/OtherBobbleChatView.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Chat_Widgets/selected_imageContainer.dart';

class otherView extends StatelessWidget {
  const otherView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chatList = [
      {
        "dp": "assets/images/CHdp2.png",
        "title": "Henry Lopez",
        "subtitle": "You Rock!!! 🚀🚀",
        "time": "4 min",
        "online": true,
        "price": "€ 20,50"
      },
      {
        "dp": "assets/images/CHdp3.png",
        "title": "Joy Bright",
        "subtitle": "Hi! vel laoreet metus, nec congue ex. ",
        "time": "23 min",
        "online": true,
        "price": "€ 9,99"
      },
      {
        "dp": "assets/images/CHdp1.png",
        "title": "Joy Bright",
        "subtitle": "Hi! vel laoreet metus, nec congue ex. ",
        "time": "2h",
        "online": false,
        "price": "€ 5,00"
      },
      {
        "dp": "assets/images/CHdp4.png",
        "title": "Javier Muli",
        "subtitle": "Pellentesque pharetra mi neque sp... ",
        "time": "2h",
        "online": false,
        "price": ""
      },
      {
        "dp": "assets/images/CHdp5.png",
        "title": "Javier Muli",
        "subtitle": "Pellentesque pharetra mi neque sp...",
        "time": "2h",
        "online": false,
        "price": ""
      },
      {
        "dp": "assets/images/CHdp4.png",
        "title": "Carlos Gomes",
        "subtitle": "Pellentesque pharetra mi neque sp...",
        "time": "2h",
        "online": false,
        "price": ""
      },
      {
        "dp": "assets/images/CHdp5.png",
        "title": "Javier Muli",
        "subtitle": "Pellentesque pharetra mi neque sp...",
        "time": "2h",
        "online": false,
        "price": ""
      },
      {
        "dp": "assets/images/CHdp2.png",
        "title": "Isabella Hernandez",
        "subtitle": "You Rock!!! 🚀🚀",
        "time": "2h",
        "online": false,
        "price": ""
      },
      {
        "dp": "assets/images/CHdp6.png",
        "title": "Alexander Gobbs",
        "subtitle": "That sounds cool. What do you think...",
        "time": "2h",
        "online": false,
        "price": ""
      },
    ];

    return Column(
      children: [
        verticalGap(15),
        TopicTextField(
          prefixIcon: Icons.search,
          hintText: 'Search...',
        ),
        verticalGap(10),
        Expanded(
          child: ListView.builder(
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                final callData = chatList[index];
                return otherChatListContainer(
                  dp: callData['dp'],
                  title: callData['title'],
                  subtitle: callData['subtitle'],
                  time: callData['time'],
                  online: callData['online'],
                  price: callData['price'],
                );
              }),
        ),
      ],
    );
  }
}

class otherChatListContainer extends StatelessWidget {
  const otherChatListContainer({
    Key? key,
    required this.title,
    this.subtitle,
    this.price = '',
    this.dp,
    this.time,
    this.online = false,
  }) : super(key: key);
  final String title;
  final String? subtitle;
  final String? price;
  final String? dp;
  final String? time;

  final bool? online;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: GestureDetector(
        onTap: () => Get.to(() => OtherBobbleChatView()),
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: TopicColor.bgchatGrey,
          ),
          child: Padding(
            padding: EdgeInsets.zero,
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: dp != null
                      ? Image.asset(
                          dp!,
                        )
                      : Icon(
                          Icons.account_circle,
                          size: 40,
                          color: Colors.grey[400],
                        ),
                ),
                horizontalGap(10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(
                              children: [
                                price != null && price!.isNotEmpty
                                    ? otherPriceContainer(price: price)
                                    : SizedBox.shrink(),
                                horizontalGap(10),
                                sufixtextchatlistcontainer(time: time),
                                if (online == true)
                                  Row(
                                    children: [
                                      horizontalGap(5),
                                      Container(
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: TopicColor.primary),
                                      ),
                                    ],
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),

                      // if (subtitle != null)
                      Column(
                        children: [
                          verticalGap(5),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              subtitle!,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class otherPriceContainer extends StatelessWidget {
  const otherPriceContainer({
    super.key,
    required this.price,
  });

  final String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66,
      height: 23,
      decoration: BoxDecoration(
        color: TopicColor.bgGreen,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
          child: SimpleWhitetextBold(
        text: price!,
        weight: FontWeight.w400,
      )),
    );
  }
}
