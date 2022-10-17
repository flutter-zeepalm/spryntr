import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spryntr/Model/items.dart';
import 'package:spryntr/Screens/responsive_layout.dart';
import 'package:spryntr/Widgets/Item_container.dart';

import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/custom_divider.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class OrderListContainer extends StatelessWidget {
  const OrderListContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilderScreen(
        desktop: Container(
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
                height: 430.h,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemContainer(
                      deletebutton: false,
                      produtitems: bottle,
                      onPressed: () {},
                    );
                  },
                ),
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
                  height: 48.h,
                  width: 348.w,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: CustomText(
                          text: "Print Reciept & Package",
                          textStyle: CustomTextStyle.ktextTextStyle,
                          color: CustomColor.kwhite,
                          fontWeight: CustomFontWeight.kMediumFontWeight)),
                ),
              ),
            ],
          ),
        ),
        mobile: Container(
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
                height: 430.h,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemContainer(
                      deletebutton: false,
                      produtitems: bottle,
                      onPressed: () {},
                    );
                  },
                ),
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
                  height: 48.h,
                  width: 348.w,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: CustomText(
                          text: "Print Reciept & Package",
                          textStyle: CustomTextStyle.ktextTextStyle,
                          color: CustomColor.kwhite,
                          fontWeight: CustomFontWeight.kMediumFontWeight)),
                ),
              ),
            ],
          ),
        ));
  }
}
