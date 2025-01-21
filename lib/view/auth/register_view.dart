import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:topics/constant/color_contant.dart';
import 'package:topics/constant/text_style.dart';

import 'package:topics/utils/widgets/standart_widget.dart';
import 'package:topics/utils/widgets/topic_loader_button.dart';
import 'package:topics/view/auth/controller/signupController.dart';
import 'package:topics/view/auth/otp_auth.dart';
import 'package:topics/view/auth/sign_in.dart';
import 'package:topics/widget/Common_Widgets/SimpleTextBold.dart';
import 'package:topics/widget/Common_Widgets/profileTextWhite.dart';
import 'package:topics/widget/Common_Widgets/textSize.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final SignUpController controller = Get.put(SignUpController());
  final keepLoggedIn = false.obs;
  final selectCountry = false.obs;
  final countryError = false.obs;
  final agreeCondition = false.obs;
  final agreeConditionError = false.obs;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: TopicColor.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: formKey,
                  child: Obx(
                    () => Column(
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
                        verticalGap(20),
                        const GeneralText(
                          text: 'Name',
                        ),
                        verticalGap(5),
                        TextFormField(
                          controller: controller.controllerName,
                          onChanged: controller.validateName,
                          style: TopicTextStyle.textfield,
                          decoration: InputDecoration(
                            errorText: controller.isValidName.value ||
                                    controller.name.value.isEmpty
                                ? null
                                : 'Name must contains 3 characters',
                          ),
                        ),
                        verticalGap(15),
                        const GeneralText(
                          text: 'Email',
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
                          text: 'Username',
                        ),
                        verticalGap(2),
                        TextFormField(
                          controller: controller.controllerUsername,
                          onChanged: controller.validateUsername,
                          style: TopicTextStyle.textfield,
                          decoration: InputDecoration(
                            errorText: controller.isValidUsername.value ||
                                    controller.username.value.isEmpty
                                ? null
                                : 'Name must contains 3 characters',
                          ),
                        ),
                        verticalGap(15),
                        const GeneralText(
                          text: 'Country Code',
                        ),
                        verticalGap(2),
                        //Custome Country Code Container
                        GestureDetector(
                          onTap: () {
                            selectCountry.value = true;
                            countryError.value = false;
                            showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: TopicColor.bgchatGrey,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30),
                                )),
                                context: context,
                                builder: (BuildContext builder) {
                                  return SizedBox(
                                      height: context.height * 0.95,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          children: [
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SimpleWhitetextBold(
                                                  text: 'Country code',
                                                  size: 18,
                                                ),
                                                crossIcon(
                                                  size: 25,
                                                )
                                              ],
                                            ),
                                            verticalGap(30),
                                            Expanded(
                                              child: ListView.builder(
                                                  itemCount: controller
                                                      .countries.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    final callback = controller
                                                        .countries[index];
                                                    return Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            controller.addFlag(
                                                                callback[
                                                                    'flag']!,
                                                                callback[
                                                                    'name']!,
                                                                callback[
                                                                    'callingCode']!);
                                                            Get.back();
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                        20.0),
                                                            child: SimpleWhitetextBold(
                                                                text:
                                                                    '${callback['flag']!}  ${callback['name']!} ( ${callback['callingCode']!} )'),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          height: 2,
                                                          child: Divider(
                                                            color: TopicColor
                                                                .lightGrey,
                                                          ),
                                                        )
                                                      ],
                                                    );
                                                  }),
                                            )
                                          ],
                                        ),
                                      ));
                                });
                          },
                          child: Container(
                            height: 37,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: TopicColor.borderGrey),
                                borderRadius: BorderRadius.circular(24)),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    controller.name2 == ""
                                        ? GeneralTextwhite(
                                            text: 'Select Country')
                                        : GeneralTextwhite(
                                            text:
                                                '${controller.flag2}  ${controller.name2} (${controller.callingCode2})'),
                                    const Icon(
                                      Icons.keyboard_arrow_down,
                                      color: TopicColor.borderGrey,
                                    )
                                  ],
                                )),
                          ),
                        ),
                        verticalGap(7),
                        countryError.value
                            ? GeneralTextDanger(
                                text: 'Please Select the country',
                                icon: horizontalGap(1),
                                size: 12,
                              )
                            : SizedBox.shrink(),

                        verticalGap(15),
                        const GeneralText(
                          text: 'Phone Number',
                        ),
                        verticalGap(2),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          controller: controller.controllerPhone,
                          onChanged: controller.validatePhone,
                          decoration: InputDecoration(
                              errorText: controller.isValidPhone.value ||
                                      controller.phone.value.isEmpty
                                  ? null
                                  : 'Phone Number is required',
                              prefix: GeneralTextGrey(
                                  text:
                                      '${controller.callingCode2.toString()} ')),
                          style: TopicTextStyle.textfield,
                        ),
                        verticalGap(15),
                        const GeneralText(
                          text: 'Date of birth',
                        ),
                        verticalGap(2),
                        TextFormField(
                          controller: controller.controllerDOB,
                          //onChanged: controller.validateDOB,
                          // decoration: InputDecoration(
                          //   errorText: controller.isValidDOB.value ||
                          //           controller.DOB.value.isEmpty
                          //       ? null
                          //       : 'Date of Birth is required',
                          // ),
                          style: TopicTextStyle.textfield,
                          onTap: () async {
                            DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1815),
                              lastDate: DateTime.now(),
                              builder: (BuildContext context, Widget? child) {
                                return Theme(
                                  data: ThemeData.dark().copyWith(
                                    primaryColor: Colors
                                        .blue, // Set the color of the selected date
                                    buttonTheme: ButtonThemeData(
                                      textTheme: ButtonTextTheme.primary,
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors
                                            .blue, // Change text button color
                                      ),
                                    ),
                                    dialogBackgroundColor: Colors
                                        .white, // Set dialog background color to black
                                    colorScheme: ColorScheme.fromSwatch(
                                      primarySwatch: Colors.blue,
                                    ).copyWith(
                                      secondary: Colors
                                          .blue, // Accent color for buttons
                                      surface: Colors
                                          .white, // Background color for the calendar grid
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );

                            if (picked != null) {
                              String formattedDate =
                                  DateFormat('dd / MM / yyyy').format(picked);
                              controller.controllerDOB.text = formattedDate;
                              controller.validateDOB();
                            }
                          },
                          readOnly: true,
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
                        verticalGap(15),
                        const GeneralText(
                          text: 'Confirm password',
                        ),
                        verticalGap(2),
                        SizedBox(
                          height: controller.isValidpassConfirm.value ||
                                  controller.passConfirm.value.isEmpty
                              ? 37
                              : 60,
                          child: Obx(
                            () => TextFormField(
                              controller: controller.controllerpassConfirm,
                              onChanged: controller.validatepassConfirm,
                              obscureText: controller.obscureText2.value,
                              style: TopicTextStyle.textfield,
                              decoration: InputDecoration(
                                errorText:
                                    controller.isValidpassConfirm.value ||
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
                        ),
                        verticalGap(15),
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
                                      agreeConditionError.value = false;
                                      keepLoggedIn.value = !keepLoggedIn.value;
                                    });
                                  },
                                  activeColor: Colors.white,
                                ),
                              ),
                            ),
                            horizontalGap(10),
                            Expanded(
                              child: Wrap(
                                children: [
                                  const PrimaryRegular12(
                                      text: 'I agree with',
                                      color: Colors.white),
                                  horizontalGap(2),
                                  const PrimaryRegular12(
                                    text: 'Terms & Conditions',
                                  ),
                                  horizontalGap(2),
                                  const PrimaryRegular12(
                                      text: 'and', color: Colors.white),
                                  horizontalGap(2),
                                  const PrimaryRegular12(
                                    text: 'Privacy Policy.',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        verticalGap(7),
                        agreeConditionError.value
                            ? GeneralTextDanger(
                                text: 'Agree the Terms & conditions',
                                icon: horizontalGap(1),
                                size: 12,
                              )
                            : SizedBox.shrink(),
                        verticalGap(30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // ignore: prefer_const_constructors
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const PrimaryRegular12(
                      text: 'Already have an account?',
                      color: Colors.white,
                    ),
                    horizontalGap(5),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const SignInView());
                      },
                      child: const PrimaryRegular12(
                        text: 'Log in here',
                      ),
                    ),
                  ],
                ),
                verticalGap(10),
                Obx(
                  () => TopicLoaderButton(
                    btnText: 'Register',
                    radius: 10,
                    color: controller.isValidEmail.value &&
                            keepLoggedIn.value &&
                            selectCountry.value &&
                            controller.isValidUsername.value &&
                            controller.isValidPhone.value &&
                            controller.isValidDOB.value &&
                            controller.isValidPass.value &&
                            controller.isValidpassConfirm.value &&
                            controller.isValidName.value
                        ? TopicColor.primary
                        : TopicColor.lightGrey,
                    onTap: () async {
                      selectCountry.value
                          ? countryError.value = false
                          : countryError.value = true;
                      agreeCondition.value
                          ? agreeConditionError.value = false
                          : agreeConditionError.value = true;
                      controller.isValidEmail.value &&
                              keepLoggedIn.value &&
                              selectCountry.value &&
                              controller.isValidUsername.value &&
                              controller.isValidPhone.value &&
                              controller.isValidDOB.value &&
                              controller.isValidPass.value &&
                              controller.isValidpassConfirm.value &&
                              controller.isValidName.value
                          ? Get.to(() => OTPScreen())
                          : null;
                    },
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
