import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/widget/feed_widgets/paidCallFeedMenuSetting/CurrencyInputField.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/paidCallsView/paidCallsController.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class ChoosePricePaidCallBottomSheet extends StatelessWidget {
  const ChoosePricePaidCallBottomSheet({
    super.key,
    required this.controller,
  });

  final Paidcallscontroller controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SimpleWhitetextBold(
                  text: 'Choose the Call price',
                  size: 18,
                ),
                crossIcon()
              ],
            ),
            verticalGap(5),
            SimpleWhitetextBold(
                weight: FontWeight.w400,
                text: 'Select the price for each call duration to proceed'),
            verticalGap(50),
            SizedBox(
              height: 200,
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
                      dividerColor: Colors.transparent,
                      tabAlignment: TabAlignment.start,
                      physics: NeverScrollableScrollPhysics(),
                      isScrollable: true,
                      controller: controller.tabController,
                      indicator: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey[400],
                      indicatorPadding:
                          const EdgeInsets.symmetric(horizontal: -20),
                      tabs: [
                        Tab(text: '15 min'),
                        Tab(text: '30 min'),
                        Tab(text: '60 min'),
                        Tab(text: '90 min'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: controller.tabController,
                      children: [
                        CurrencyInputField(
                            controller: controller.min15controller),
                        CurrencyInputField(
                            controller: controller.min30controller),
                        CurrencyInputField(
                            controller: controller.min60controller),
                        CurrencyInputField(
                            controller: controller.min90controller),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            controller.errormsg.value
                ? controller.isValidtext.value
                    ? SizedBox.shrink()
                    : GeneralTextDanger(
                        alignment: MainAxisAlignment.center,
                        text:
                            "You didn't choose a price for each call duration.",
                        size: 12,
                        weight: FontWeight.w300,
                      )
                : SizedBox.shrink(),
            verticalGap(10),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TopicLoaderButton(
                btnText: 'Save',
                onTap: () async {
                  log(controller.min15controller.text);
                  log(controller.min30controller.text);
                  log(controller.min60controller.text);
                  log(controller.min90controller.text);
                  controller.isValidtext.value ? Get.back() : null;
                  controller.toggleerrormsg();
                },
                color: controller.isValidtext.value
                    ? TopicColor.primary
                    : TopicColor.lightGrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
