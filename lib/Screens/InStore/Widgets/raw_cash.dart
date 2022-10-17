// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class CashRow extends StatelessWidget {
  final Color percentcolor;
  final String cash;
  final int sales;
  final double percentage;
  const CashRow({
    Key? key,
    required this.percentcolor,
    required this.cash,
    required this.sales,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        children: [
          CustomText(
              text: "Cash - \$$cash",
              textStyle: CustomTextStyle.ktextTextStyle,
              color: CustomColor.kblack,
              fontWeight: CustomFontWeight.kMediumFontWeight),
          AddCustomSpace(width: 0, height: 5.h),
          CustomText(
              text: "$sales Sales",
              textStyle: CustomTextStyle.kverysmallTextStyle,
              color: CustomColor.klightgrey,
              fontWeight: CustomFontWeight.kRegularWeight),
        ],
      ),
      const Spacer(),
      CustomText(
          text: "$percentage %",
          textStyle: CustomTextStyle.khighmidTextStyle,
          color: percentcolor,
          fontWeight: CustomFontWeight.kMediumFontWeight),
    ]);
  }
}
