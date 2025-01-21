import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/paymentsView/WalletView.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class Feedpaymentview extends StatelessWidget {
  Feedpaymentview({super.key});
  final List<Map<String, dynamic>> historyList = [
    {
      "title": "Carlos Gomes subscribed your channel",
      "price": "+ 4,99",
      "icon": Icons.lock_open,
    },
    {
      "title": "Joy Bright subscribed your channel",
      "price": "+ 4,99",
      "icon": Icons.play_circle_outline_rounded,
    },
    {
      "title": "Mary Smith paid for your video",
      "price": "+ 4,99",
      "icon": Icons.message_outlined,
    },
    {
      "title": "Mary Smith paid for your post",
      "price": "+ 4,99",
      "icon": Icons.lock_open,
    },
    {
      "title": "Mary Smith paid for your post",
      "price": "+ 4,99",
      "icon": Icons.play_circle_outline_rounded,
    },
    {
      "title": "Mary Smith paid for your video",
      "price": "+ 4,99",
      "icon": Icons.message_outlined,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Payments'),
        titleSpacing: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              TopicColor.lightGrey,
                              TopicColor.bgchatGrey
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        //  color: TopicColor.lightGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SimpleGreytextBold(
                          text: 'Balance',
                          color: TopicColor.titleGrey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                SimpleWhitetextBold(
                                  text: '\$',
                                  size: 20,
                                ),
                                verticalGap(8),
                              ],
                            ),
                            horizontalGap(5),
                            SimpleWhitetextBold(
                              text: '67.98',
                              size: 40,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  verticalGap(15),
                  TopicLoaderButton(
                    btnText: 'Withdraw money',
                    onTap: () async {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext builder) {
                            return SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SimpleWhitetextBold(
                                          text: 'Withdrawal',
                                          size: 18,
                                        ),
                                        crossIcon(),
                                      ],
                                    ),
                                  ),
                                  //verticalGap(20),
                                  SimpleWhitetextBold2(
                                    text: '\$ 67,98',
                                    size: 24,
                                  ),
                                  horizontalDivider(),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GeneralTextGrey(text: 'To'),
                                        verticalGap(5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SimpleWhitetextBold(
                                                    text: 'Paypal'),
                                                GeneralTextwhite(
                                                    text:
                                                        'henry-lopez@gmail.com'),
                                              ],
                                            ),
                                            SimplePrimarytextBold(text: 'Edit'),
                                          ],
                                        ),
                                        verticalGap(55),
                                        TopicLoaderButton(
                                            color: TopicColor.primary,
                                            btnText: 'Withdraw money',
                                            onTap: () async {
                                              Get.to(() => Walletview());
                                            })
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    color: TopicColor.primary,
                  ),
                  verticalGap(25),
                  SimpleWhitetextBold(
                    text: 'History',
                    size: 20,
                  ),
                  verticalGap(15),
                  SimpleGreytextBold(
                    text: 'Today, 20 Oct',
                    size: 12,
                  ),
                  verticalGap(15),
                ],
              ),
            ),
            PaymentHistoryContainer(
              icon: Icons.lock_open,
              title: 'John Travis subscribed your channel',
              price: '+ 4,99',
            ),
            horizontalDivider(),
            PaymentHistoryContainer(
              icon: Icons.lock_open,
              title: 'Carlos Gomes subscribed your channel',
              price: '+ 4,99',
            ),
            SimpleGreytextBold2(
              text: 'Yesterday, 19 Oct',
              size: 12,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: historyList.length,
                itemBuilder: (context, index) {
                  final callback = historyList[index];
                  return Column(
                    children: [
                      PaymentHistoryContainer(
                          title: callback['title']!,
                          price: callback['price']!,
                          icon: callback['icon']!),
                      horizontalDivider(),
                    ],
                  );
                })
          ],
        ),
      ),
    ));
  }
}

class PaymentHistoryContainer extends StatelessWidget {
  const PaymentHistoryContainer({
    super.key,
    required this.title,
    required this.price,
    required this.icon,
  });
  final String title;
  final String price;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: TopicColor.lightGrey,
          ),
          horizontalGap(15),
          Expanded(
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              title,
              style: TopicTextStyle.GeneralStyleWhite,
            ),
          ),
          horizontalGap(10),
          SimplePrimarytextBold(text: price)
        ],
      ),
    );
  }
}
