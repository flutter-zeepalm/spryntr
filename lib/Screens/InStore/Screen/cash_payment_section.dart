// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Model/items.dart';
import 'package:spryntr/Model/product_model.dart';

import 'package:spryntr/Widgets/Item_container.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/custom_divider.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/assets_path.dart';
import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/typography.dart';

class CashPayment extends StatelessWidget {
  const CashPayment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1024.h,
      width: 433.w,
      decoration: BoxDecoration(
        boxShadow: boxshadow,
        color: CustomColor.kwhite,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddCustomSpace(width: 0, height: 24.h),
            CustomText(
                text: "Payment Method\n2 Available",
                textStyle: CustomTextStyle.kmedTextStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kSemiBoldFontWeight),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 40.h,
              ),
              child: Row(
                children: [
                  CashButton(
                    onpressed: () {},
                  ),
                  AddCustomSpace(width: 40.w, height: 0),
                  CashButton(
                    onpressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 630.h,
              width: 385.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kContDesRadius),
                border: Border.all(color: CustomColor.klightgrey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.w,
                      top: 24.h,
                      bottom: 40.h,
                    ),
                    child: CustomText(
                        text: "Confirmation \nTicket #34562",
                        textStyle: CustomTextStyle.kmedTextStyle,
                        color: CustomColor.kblack,
                        fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.w,
                    ),
                    child: Row(
                      children: [
                        CustomText(
                            text: "Items",
                            textStyle: CustomTextStyle.ktextTextStyle,
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kMediumFontWeight),
                        AddCustomSpace(width: 172.w, height: 0),
                        CustomText(
                            text: "Qty",
                            textStyle: CustomTextStyle.ktextTextStyle,
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kMediumFontWeight),
                        AddCustomSpace(width: 39.w, height: 0),
                        CustomText(
                            text: "Prize",
                            textStyle: CustomTextStyle.ktextTextStyle,
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kMediumFontWeight),
                      ],
                    ),
                  ),
                  const CustomDivider(
                    selected: false,
                  ),
                  SizedBox(
                    height: 300.h,
                    child: ListView(children: [
                      ItemContainer(
                        produtitems: bottle,
                        deletebutton: false,
                        onPressed: () {},
                      )
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.w,
                      bottom: 24.h,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(CustomAssets.redtick),
                        AddCustomSpace(width: 8.w, height: 0),
                        CustomText(
                            text:
                                "If Item is out of stock, replace with best\nchoice",
                            textStyle: CustomTextStyle.ktextTextStyle,
                            color: CustomColor.kred,
                            fontWeight: CustomFontWeight.kRegularWeight),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.w,
                    ),
                    child: SizedBox(
                      width: 348.w,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: CustomText(
                              text: "Expand",
                              textStyle: CustomTextStyle.ktextTextStyle,
                              color: CustomColor.kred,
                              fontWeight: CustomFontWeight.kMediumFontWeight)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 50.w,
                vertical: 40.h,
              ),
              child: SizedBox(
                height: 48.h,
                width: 343.w,
                child: ElevatedButton(
                  onPressed: () {},
                  child: CustomText(
                      text: "Confirm Payment",
                      textStyle: CustomTextStyle.ktextTextStyle,
                      color: CustomColor.kwhite,
                      fontWeight: CustomFontWeight.kMediumFontWeight),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CashButton extends StatelessWidget {
  final VoidCallback onpressed;
  const CashButton({
    Key? key,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 130.w,
      child: OutlinedButton(
          onPressed: onpressed,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  CustomAssets.crditcard,
                  height: 24.h,
                  width: 24.w,
                ),
                AddCustomSpace(width: 10.w, height: 0),
                CustomText(
                    text: "Cash",
                    textStyle: CustomTextStyle.kmediumTextStyle,
                    color: CustomColor.kred,
                    fontWeight: CustomFontWeight.kRegularWeight),
              ],
            ),
          )),
    );
  }
}
