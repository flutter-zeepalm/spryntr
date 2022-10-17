import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Screens/LoginScreens/cashier_login.dart';
import 'package:spryntr/Screens/LoginScreens/manager_login.dart';
import 'package:spryntr/Screens/responsive_layout.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      child: SvgPicture.asset(
                        CustomAssets.kflowerSvg,
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
                  children: [
                    AddCustomSpace(width: 0, height: 220.h),
                    CustomText(
                        text: "Log In",
                        textStyle: CustomTextStyle.kLargeStyle,
                        color: CustomColor.kblack,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                    AddCustomSpace(width: 0, height: 156.h),
                    SizedBox(
                      height: 80.h,
                      width: 300.w,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const ManagerLogin());
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(CustomAssets.kmanager),
                              CustomText(
                                  text: "Manager",
                                  textStyle: CustomTextStyle.kbigStyle,
                                  color: CustomColor.kwhite,
                                  fontWeight: CustomFontWeight.kBoldFontWeight),
                            ],
                          )),
                    ),
                    AddCustomSpace(width: 0, height: 40.h),
                    SizedBox(
                      height: 80.h,
                      width: 300.w,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(() => const CashierLogin());
                        },
                        child: Row(
                          children: [
                            //Image.asset(CustomAssets.cashier),
                            SvgPicture.asset(CustomAssets.cashier),
                            CustomText(
                                text: "Cashier",
                                textStyle: CustomTextStyle.kbigStyle,
                                color: CustomColor.kred,
                                fontWeight: CustomFontWeight.kBoldFontWeight),
                          ],
                        ),
                      ),
                    ),
                    AddCustomSpace(width: 0, height: 273.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: "Don’t have an account?",
                            textStyle: CustomTextStyle.kmediumTextStyle,
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        TextButton(
                          onPressed: () {},
                          child: CustomText(
                              text: "Forget",
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
                height: 800.h,
                width: double.infinity,
                color: CustomColor.kblack,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        // left: 80.w,
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
                      child: SvgPicture.asset(
                        CustomAssets.kflowerSvg,
                        height: 557.48.h,
                        width: 580.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 600.h,
                width: double.infinity,
                color: CustomColor.kwhite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddCustomSpace(width: 0, height: 50.h),
                    CustomText(
                        text: "Log In",
                        textStyle:
                            CustomTextStyle.kLargeStyle.copyWith(fontSize: 20),
                        color: CustomColor.kblack,
                        fontWeight: CustomFontWeight.kBoldFontWeight),
                    AddCustomSpace(width: 0, height: 56.h),
                    SizedBox(
                      height: 80.h,
                      width: 700.w,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const ManagerLogin());
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(CustomAssets.kmanager),
                              CustomText(
                                  text: "Manager",
                                  textStyle: CustomTextStyle.kbigStyle
                                      .copyWith(fontSize: 14),
                                  color: CustomColor.kwhite,
                                  fontWeight: CustomFontWeight.kBoldFontWeight),
                            ],
                          )),
                    ),
                    AddCustomSpace(width: 0, height: 40.h),
                    SizedBox(
                      height: 80.h,
                      width: 700.w,
                      child: OutlinedButton(
                        onPressed: () {
                          Get.to(() => const CashierLogin());
                        },
                        child: Row(
                          children: [
                            //Image.asset(CustomAssets.cashier),
                            SvgPicture.asset(CustomAssets.cashier),
                            CustomText(
                                text: "Cashier",
                                textStyle: CustomTextStyle.kbigStyle
                                    .copyWith(fontSize: 14),
                                color: CustomColor.kred,
                                fontWeight: CustomFontWeight.kBoldFontWeight),
                          ],
                        ),
                      ),
                    ),
                    AddCustomSpace(width: 0, height: 100.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: "Don’t have an account?",
                            textStyle: CustomTextStyle.kmediumTextStyle
                                .copyWith(fontSize: 14),
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kBoldFontWeight),
                        TextButton(
                          onPressed: () {},
                          child: CustomText(
                              text: "Forget",
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
