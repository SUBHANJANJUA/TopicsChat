import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/widget/feed_widgets/paidCallFeedMenuSetting/ChoosePricePaidCallBottomSheet.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/paidCallsView/paidCallsController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';
import 'package:topics/widget/feed_widgets/paidCallFeedMenuSetting/CurrencyInputField.dart';
import 'package:topics/widget/feed_widgets/paidCallFeedMenuSetting/PaidCallcontainer.dart';

class Paidcallsview extends StatelessWidget {
  Paidcallsview({super.key});
  final Paidcallscontroller controller = Get.put(Paidcallscontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Paid calls'),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Column(
                children: [
                  SimpleWhitetextBold(
                    text:
                        'Choose the price you want to charge for each paid call',
                    weight: FontWeight.w300,
                    size: 18,
                  ),
                  verticalGap(30),
                  PaidCallsContainer(
                    duration: '15 minutes',
                    price: controller.price15.value,
                  ),
                  verticalGap(10),
                  PaidCallsContainer(
                    duration: '30 minutes',
                    price: controller.price30.value,
                  ),
                  verticalGap(10),
                  PaidCallsContainer(
                    duration: '60 minutes',
                    price: controller.price60.value,
                  ),
                  verticalGap(10),
                  PaidCallsContainer(
                    duration: '90 minutes',
                    price: controller.price90.value,
                  ),
                  verticalGap(15),
                  GeneralTextPrimary(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext builder) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  top: 20.0,
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SimpleWhitetextBold(
                                        text: 'Custom call duration and price',
                                        size: 18,
                                      ),
                                      crossIcon(),
                                    ],
                                  ),
                                  horizontalGap(5),
                                  GeneralTextwhite(
                                      size: 12,
                                      text:
                                          'Select the duration and price for custom paid call'),
                                  verticalGap(30),
                                  GeneralTextwhite(text: 'Duration (min)'),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Obx(() => Expanded(
                                            child: Slider(
                                              value: controller.duration.value,
                                              min: 1,
                                              max: 30,
                                              divisions: 29,
                                              activeColor: Colors.blue,
                                              onChanged: (value) {
                                                controller.duration.value =
                                                    value;
                                              },
                                            ),
                                          )),
                                      Obx(() => Text(
                                            "${controller.duration.value.toInt()}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white),
                                          )),
                                    ],
                                  ),
                                  CurrencyInputField(
                                      controller:
                                          controller.customCallController),
                                  Obx(
                                    () => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20.0),
                                      child: TopicLoaderButton(
                                          color: controller.isValidtext.value
                                              ? TopicColor.primary
                                              : TopicColor.lightGrey,
                                          btnText: 'Save',
                                          onTap: () async {
                                            controller.isValidtext.value
                                                ? Get.back()
                                                : null;
                                          }),
                                    ),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    text: 'Add custom duration and price',
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: TopicColor.primary,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                GeneralTextGrey(
                  text:
                      "You can only charge for calls when all calls’ prices are fixed",
                  size: 10,
                  weight: FontWeight.w300,
                ),
                verticalGap(15),
                TopicLoaderButton(
                  btnText: 'Define prices',
                  onTap: () async {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext builder) {
                          return ChoosePricePaidCallBottomSheet(
                              controller: controller);
                        });
                  },
                  color: TopicColor.primary,
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
