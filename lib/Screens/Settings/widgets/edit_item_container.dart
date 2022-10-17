// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spryntr/Model/product_model.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';

import '../../../data/data.dart';

class ProductItems extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;
  const ProductItems({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 220.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kContDesRadius),
        border: Border.all(color: CustomColor.klightgrey),
      ),
      child: Column(children: [
        SizedBox(
          child: Column(children: [
            Image.asset(product.imagepath),
            AddCustomSpace(width: 0, height: 16.h),
            CustomText(
                text: product.name,
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kMediumFontWeight),
            AddCustomSpace(width: 0, height: 2.h),
            CustomText(
                text: product.quantity,
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kMediumFontWeight),
            AddCustomSpace(width: 0, height: 8.h),
            CustomText(
                text: "₦ ${product.prize}",
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.klightgrey,
                fontWeight: CustomFontWeight.kRegularWeight),
          ]),
        ),
        const Spacer(),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 52.h,
            color: CustomColor.kred.withOpacity(0.2),
            alignment: Alignment.center,
            child: Row(
              children: [
                AddCustomSpace(width: 68.w, height: 0),
                SvgPicture.asset(CustomAssets.edititems),
                AddCustomSpace(width: 9.w, height: 0),
                CustomText(
                    text: "Edit item",
                    textStyle: CustomTextStyle.ktextTextStyle,
                    color: CustomColor.kred,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight)
              ],
            ),
          ),
        )
      ]),
    );
  }
}
