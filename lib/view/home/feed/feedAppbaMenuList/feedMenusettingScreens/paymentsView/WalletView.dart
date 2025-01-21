import 'package:flutter/material.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class Walletview extends StatelessWidget {
  Walletview({super.key});
  final List<Map<String, dynamic>> walletList = [
    {
      "title": "MetaMask",
      "subtitle": "j5h8e2r4m1y9c3o7dj5h8e2r4m1y9c3o7d",
      "dp": "assets/images/metamask.png"
    },
    {
      "title": "Phantom",
      "subtitle": "j5h8e2r4m1y9c3o7dj5h8e2r4m1y9c3o7d",
      "dp": "assets/images/phantom.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Wallet'),
        titleSpacing: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SimpleWhitetextBold(
                text:
                    'Access the decentralized communities of the NFTs you own',
                weight: FontWeight.w300,
                size: 18,
              ),
              verticalGap(20),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: walletList.length,
                  itemBuilder: (context, index) {
                    final callback = walletList[index];
                    return WalletContainer(
                      title: callback['title']!,
                      subtitle: callback['subtitle']!,
                      dp: callback['dp']!,
                    );
                  }),
              verticalGap(10),
              Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: TopicColor.lightGrey,
                    )),
                child: GeneralTextwhite2(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext builder) {
                          return SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SimpleWhitetextBold(
                                        text: 'Add wallet',
                                        size: 18,
                                      ),
                                      crossIcon()
                                    ],
                                  ),
                                ),
                                GeneralTextwhite2(
                                  text: 'Phantom',
                                  actionIcon: true,
                                  weight: FontWeight.w600,
                                ),
                                horizontalDivider(),
                                GeneralTextwhite2(
                                  text: 'MetaMask',
                                  actionIcon: true,
                                  weight: FontWeight.w600,
                                ),
                                //verticalGap(10),
                              ],
                            ),
                          );
                        });
                  },
                  text: 'Add wallet',
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: TopicColor.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class WalletContainer extends StatelessWidget {
  const WalletContainer({
    super.key,
    required this.title,
    required this.subtitle,
    this.dp = "",
  });
  final String title;
  final String subtitle;
  final String? dp;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
            color: TopicColor.bgchatGrey,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Image.asset(
                dp == "" ? "assets/images/dp_default.png" : dp!,
                width: 30,
                height: 30,
              ),
              horizontalGap(10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SimpleWhitetextBold(
                      text: title,
                      size: 18,
                    ),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      subtitle,
                      style: TopicTextStyle.GeneralStyleWhite12,
                    )
                  ],
                ),
              ),
              horizontalGap(10),
              crossIcon(
                onTap: () {},
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
