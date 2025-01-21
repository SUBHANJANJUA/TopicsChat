import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/topics/TopicProfileView.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';

class TopicViewContainer extends StatelessWidget {
  const TopicViewContainer({
    super.key,
    required this.callback,
  });

  final Map<String, dynamic> callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(Topicprofileview(callback: callback)),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  callback['dp']!,
                  fit: BoxFit.fitWidth,
                )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SimpleWhitetextBold(
                    text: callback['title']!,
                  ),
                ),
              ),
              Center(
                child: SimpleWhitetextBold(
                  text: 'created by: ${callback['creater']!}',
                  size: 10,
                ),
              ),
              verticalGap(5),
              Stack(
                children: [
                  Blur(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                    blur: 2.5,
                    blurColor: TopicColor.lightGrey,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                          color: TopicColor.white.withOpacity(0.2),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GeneralTextwhite(
                            text: callback['time']!,
                            icon: Icon(Icons.timelapse_rounded,
                                size: 20.0, color: Colors.white),
                          ),
                          GeneralTextwhite(
                            text: callback['member']!,
                            icon: Icon(Icons.person_rounded,
                                size: 20.0, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
