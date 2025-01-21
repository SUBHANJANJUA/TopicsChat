import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:topics/constant/text_style.dart';
import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/auth/controller/signInController.dart';
import 'package:topics/view/auth/forgot_email.dart';
import 'package:topics/view/auth/register_view.dart';
import 'package:topics/view/home/home_view.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';
import '../../constant/color_contant.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});
  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final SignInController controller = Get.put(SignInController());
  final keepLoggedIn = false.obs;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SafeArea(
      child: Scaffold(
        backgroundColor: TopicColor.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalGap(30),
                        const Center(
                          child: Image(
                              height: 120,
                              width: 140,
                              image: AssetImage('assets/images/logo.png')),
                        ),
                        verticalGap(30),
                        const GeneralText(
                          text: 'Email or phone number',
                        ),
                        verticalGap(5),
                        TextFormField(
                          controller: controller.controllerEmail,
                          onChanged: controller.validateEmail,
                          style: TopicTextStyle.textfield,
                          decoration: InputDecoration(
                            errorText: controller.isValidEmail.value ||
                                    controller.email.value.isEmpty
                                ? null
                                : 'Enter a valid email',
                          ),
                        ),
                        verticalGap(15),
                        const GeneralText(
                          text: 'Password',
                        ),
                        verticalGap(2),
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

                        // TopicTextField(
                        //   controller: passwordController,
                        //   maxLine: 1,
                        //   isVisible: true,
                        //   suffixIcon: Icons.visibility_off,
                        //   suffixIcon2: Icons.visibility,
                        // ),
                        verticalGap(25),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ForgotEmailView());
                          },
                          child: const Center(
                            child: const PrimaryRegular12(
                              text: 'Forgot password?',
                            ),
                          ),
                        ),
                        verticalGap(35),
                        Row(
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Colors.grey,
                                ),
                                child: Radio<bool>(
                                  toggleable: true,
                                  value: keepLoggedIn.value,
                                  groupValue: true,
                                  onChanged: (value) {
                                    setState(() {
                                      keepLoggedIn.value = !keepLoggedIn.value;
                                    });
                                  },
                                  //  fillColor: Colors.red,
                                  activeColor: Colors.white,
                                ),
                              ),
                            ),
                            horizontalGap(10),
                            const PrimaryRegular12(
                                text: 'Keep me logged in', color: Colors.white),
                          ],
                        ),
                        verticalGap(30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const PrimaryRegular12(
                      text: 'Dont have an account yet?',
                      color: Colors.white,
                    ),
                    horizontalGap(5),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => RegisterView());
                      },
                      child: const PrimaryRegular12(
                        text: 'Register here',
                      ),
                    ),
                  ],
                ),
                verticalGap(10),
                Obx(
                  () => TopicLoaderButton(
                    btnText: 'Log in',
                    radius: 10,
                    color: controller.isValidEmail.value &&
                            controller.isValidPass.value
                        ? TopicColor.primary
                        : TopicColor.lightGrey,
                    onTap: () async {
                      // controller.isValidEmail.value &&
                      //         controller.isValidPass.value
                      //     ?
                      Get.to(() => const HomeView())
                          // : null
                          ;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
