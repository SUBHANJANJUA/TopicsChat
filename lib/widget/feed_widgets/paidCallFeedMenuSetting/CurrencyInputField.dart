import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/view/home/feed/feedAppbarMenuList/feedMenusettingScreens/paidCallsView/paidCallsController.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class CurrencyInputField extends StatelessWidget {
  CurrencyInputField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;
  final Paidcallscontroller paidcallscontroller =
      Get.put(Paidcallscontroller());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 140,
            child: TextFormField(
              onChanged: paidcallscontroller.validatetext,
              controller: controller,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9,]')),
              ],
              style: TextStyle(
                fontSize: 55,
                color: TopicColor.white,
              ),
              decoration: InputDecoration(
                hintText: '0,00',
                hintStyle: TextStyle(
                  fontSize: 55,
                  color: TopicColor.lightGrey,
                ),
                suffixStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[600],
                ),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              cursorColor: Colors.white,
            ),
          ),
          paidcallscontroller.isValidtext.value
              ? SizedBox.shrink()
              : Container(
                  width: 3,
                  height: 65,
                  color: TopicColor.white,
                ),
          horizontalGap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalGap(20),
              GeneralTextGrey(
                color: paidcallscontroller.isValidtext.value
                    ? TopicColor.white
                    : TopicColor.lightGrey,
                text: 'EUR',
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
