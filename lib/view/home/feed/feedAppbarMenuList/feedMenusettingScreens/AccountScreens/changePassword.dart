import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/home/feed/feedController/feedController.dart';
import 'package:topics/widget/Common_Widgets/MainTitleText.dart';
import 'package:topics/widget/Common_Widgets/appBar_icons.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class ChangePasswordView extends StatelessWidget {
  ChangePasswordView({super.key});
  final FeedController controller = Get.put(FeedController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: TopicColor.black,
      appBar: AppBar(
        leading: backIconButtonLeading(),
        title: HeadingTextAppBar(text: 'Change password'),
        titleSpacing: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GeneralText(
                padding: EdgeInsets.all(0.0),
                text:
                    'Type your current password and choose a new one. It must contain at least 8 characters.',
              ),
              verticalGap(20),
              GeneralText(
                text: 'Current password',
              ),
              verticalGap(5),
              SizedBox(
                height: controller.isValidPassCu.value ||
                        controller.passwordCu.value.isEmpty
                    ? 37
                    : 60,
                child: TextFormField(
                  controller: controller.controllerPassCu,
                  onChanged: controller.validatePassCu,
                  obscureText: controller.obscureText3.value,
                  style: TopicTextStyle.textfield,
                  decoration: InputDecoration(
                    errorText: controller.isValidPassCu.value ||
                            controller.passwordCu.value.isEmpty
                        ? null
                        : 'Password must contains 8 characters',
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.togglePasswordVisibitity3();
                      },
                      icon: Icon(
                          controller.obscureText3.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: TopicColor.lightGrey),
                    ),
                  ),
                ),
              ),
              verticalGap(15),
              GeneralText(
                text: 'New password',
              ),
              verticalGap(5),
              SizedBox(
                height: controller.isValidPass.value ||
                        controller.password.value.isEmpty
                    ? 37
                    : 60,
                child: TextFormField(
                  controller: controller.controllerPass,
                  onChanged: controller.validatePass,
                  obscureText: controller.obscureText.value,
                  style: TopicTextStyle.textfield,
                  decoration: InputDecoration(
                    errorText: controller.isValidPass.value ||
                            controller.password.value.isEmpty
                        ? null
                        : 'Password must contains 8 characters',
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.togglePasswordVisibitity();
                      },
                      icon: Icon(
                          controller.obscureText.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: TopicColor.lightGrey),
                    ),
                  ),
                ),
              ),
              verticalGap(15),
              GeneralText(
                text: 'Confirm new password',
              ),
              verticalGap(5),
              SizedBox(
                height: controller.isValidpassConfirm.value ||
                        controller.passConfirm.value.isEmpty
                    ? 37
                    : 60,
                child: TextFormField(
                  controller: controller.controllerpassConfirm,
                  onChanged: controller.validatepassConfirm,
                  obscureText: controller.obscureText2.value,
                  style: TopicTextStyle.textfield,
                  decoration: InputDecoration(
                    errorText: controller.isValidpassConfirm.value ||
                            controller.passConfirm.value.isEmpty
                        ? null
                        : 'Please enter the same password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.togglePasswordVisibitity2();
                      },
                      icon: Icon(
                          controller.obscureText2.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: TopicColor.lightGrey),
                    ),
                  ),
                ),
              ),
              Spacer(),
              TopicLoaderButton(
                btnText: 'Save',
                onTap: () async {},
                color: controller.isValidPass.value &&
                        controller.isValidPassCu.value &&
                        controller.isValidpassConfirm.value
                    ? TopicColor.primary
                    : TopicColor.lightGrey,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
