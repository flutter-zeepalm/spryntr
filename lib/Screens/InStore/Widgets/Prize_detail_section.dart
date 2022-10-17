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

import 'package:spryntr/Widgets/prize_row.dart';
import 'package:spryntr/Widgets/text_widgets.dart';

import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/typography.dart';

class PrizeSection extends StatelessWidget {
  const PrizeSection({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 24.h,
              left: 24.w,
              bottom: 67.h,
            ),
            child: CustomText(
                text: "Ticket #34562",
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
            height: 604.h,
            child: ListView.builder(
              itemCount: prizeitemlist.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemContainer(
                  deletebutton: true,
                  produtitems: prizeitemlist[index],
                  onPressed: () {
                    prizeitemlist.removeAt(index);
                  },
                );
              },
            ),
          ),
          const CustomDivider(
            selected: false,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 36.w,
            ),
            child: SizedBox(
              width: 361.w,
              child: Column(
                children: [
                  const PrizeRow(
                    title: 'Discount',
                    prize: '₦ 40',
                  ),
                  AddCustomSpace(width: 0, height: 16.h),
                  const PrizeRow(
                    title: 'Total',
                    prize: '₦ 4000',
                  ),
                  AddCustomSpace(width: 0, height: 16.h),
                  const PrizeRow(
                    title: 'Sub total',
                    prize: '₦ 3960',
                  ),
                ],
              ),
            ),
          ),
          AddCustomSpace(width: 0, height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 50.w,
            ),
            child: SizedBox(
              height: 48.h,
              width: 343.w,
              child: ElevatedButton(
                onPressed: () {},
                child: CustomText(
                    text: "Proceed to payment",
                    textStyle: CustomTextStyle.ktextTextStyle,
                    color: CustomColor.kwhite,
                    fontWeight: CustomFontWeight.kMediumFontWeight),
              ),
            ),
          )
        ],
      ),
    );
  }
}
