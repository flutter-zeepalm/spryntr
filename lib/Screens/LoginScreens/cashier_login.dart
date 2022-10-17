import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Screens/LoginScreens/signup_cashier.dart';
import 'package:spryntr/Screens/responsive_layout.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/custom_text_feild.dart';
import 'package:spryntr/Widgets/custom_textfeild.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class CashierLogin extends StatelessWidget {
  const CashierLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var paswordController = TextEditingController();
    return Scaffold(
      body: LayoutBuilderScreen(
        desktop: SingleChildScrollView(
          child: Row(
            children: [
              Container(
                height: 1024.h,
                width: 888.w,
                color: CustomColor.kblack,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 80.w,
                        top: 80.h,
                      ),
                      child: SvgPicture.asset(
                        CustomAssets.synlogo,
                        height: 66.03.h,
                        width: 218.13.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 154.w,
                        top: 88.h,
                      ),
                      child:
                          //Image.asset("assets/managerthemepng.png")
                          SvgPicture.asset(
                        //"assets/loginmanagertheme.svg",
                        CustomAssets.cashiertheme,
                        height: 557.48.h,
                        width: 580.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1024.h,
                width: 612.w,
                color: CustomColor.kwhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 72.h,
                        bottom: 89.h,
                        right: 450.w,
                      ),
                      child: TextButton(
                        child: CustomText(
                            text: "Back",
                            textStyle: CustomTextStyle.kbigStyle,
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kMediumFontWeight),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                    CustomText(
                        text: "Log in as a Cashier",
                        textStyle: CustomTextStyle.kLargeStyle,
                        color: CustomColor.kblack,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                    AddCustomSpace(width: 0, height: 132.h),
                    const TextFeildContainer(
                      text: 'Email / Phone',
                    ),
                    CustomTextField(
                        controller: emailController,
                        textInputType: TextInputType.multiline,
                        hintText: "spryntr@mail.com",
                        showCalenderIcon: false,
                        textInput: TextInputAction.next),
                    const TextFeildContainer(
                      text: 'Password',
                    ),
                    CustomTextField(
                        controller: paswordController,
                        textInputType: TextInputType.multiline,
                        hintText: "",
                        showCalenderIcon: false,
                        textInput: TextInputAction.done),
                    AddCustomSpace(width: 0, height: 41.h),
                    SizedBox(
                      height: 80.h,
                      width: 337.w,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const SignUpCashier());
                          },
                          child: CustomText(
                              text: "Sign In",
                              textStyle: CustomTextStyle.kbigStyle,
                              color: CustomColor.kwhite,
                              fontWeight: CustomFontWeight.kBoldFontWeight)),
                    ),
                    AddCustomSpace(width: 0, height: 249.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: "Forgotten Password?",
                            textStyle: CustomTextStyle.kmediumTextStyle,
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        TextButton(
                          onPressed: () {},
                          child: CustomText(
                              text: "Reset",
                              textStyle: CustomTextStyle.kmediumTextStyle,
                              color: CustomColor.kred,
                              fontWeight: CustomFontWeight.kBoldFontWeight),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 1024.h,
                width: double.infinity,
                color: CustomColor.kblack,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        //left: 80.w,
                        top: 80.h,
                      ),
                      child: SvgPicture.asset(
                        CustomAssets.synlogo,
                        height: 66.03.h,
                        width: 218.13.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        //left: 154.w,
                        top: 88.h,
                      ),
                      child:
                          //Image.asset("assets/managerthemepng.png")
                          SvgPicture.asset(
                        //"assets/loginmanagertheme.svg",
                        CustomAssets.cashiertheme,
                        height: 557.48.h,
                        width: 580.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1024.h,
                width: double.infinity,
                color: CustomColor.kwhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40.h,
                        bottom: 40.h,
                        left: 100.w,
                      ),
                      child: TextButton(
                        child: CustomText(
                            text: "Back",
                            textStyle: CustomTextStyle.kbigStyle
                                .copyWith(fontSize: 16),
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kMediumFontWeight),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                    CustomText(
                        text: "Log in as a Cashier",
                        textStyle:
                            CustomTextStyle.kLargeStyle.copyWith(fontSize: 20),
                        color: CustomColor.kblack,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                    AddCustomSpace(width: 0, height: 132.h),
                    SizedBox(
                      width: 700.w,
                      child: const TextFeildContainer(
                        text: 'Email / Phone',
                      ),
                    ),
                    SizedBox(
                      width: 700.w,
                      child: CustomTextField(
                          controller: emailController,
                          textInputType: TextInputType.multiline,
                          hintText: "spryntr@mail.com",
                          showCalenderIcon: false,
                          textInput: TextInputAction.next),
                    ),
                    const TextFeildContainer(
                      text: 'Password',
                    ),
                    CustomTextField(
                        controller: paswordController,
                        textInputType: TextInputType.multiline,
                        hintText: "",
                        showCalenderIcon: false,
                        textInput: TextInputAction.done),
                    AddCustomSpace(width: 0, height: 41.h),
                    SizedBox(
                      height: 80.h,
                      width: 700.w,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const SignUpCashier());
                          },
                          child: CustomText(
                              text: "Sign In",
                              textStyle: CustomTextStyle.kbigStyle
                                  .copyWith(fontSize: 14),
                              color: CustomColor.kwhite,
                              fontWeight: CustomFontWeight.kBoldFontWeight)),
                    ),
                    AddCustomSpace(width: 0, height: 100.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: "Forgotten Password?",
                            textStyle: CustomTextStyle.kmediumTextStyle
                                .copyWith(fontSize: 14),
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        TextButton(
                          onPressed: () {},
                          child: CustomText(
                              text: "Reset",
                              textStyle: CustomTextStyle.kmediumTextStyle
                                  .copyWith(fontSize: 14),
                              color: CustomColor.kred,
                              fontWeight: CustomFontWeight.kBoldFontWeight),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
