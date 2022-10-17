// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Model/items.dart';
import 'package:spryntr/Model/product_model.dart';
import 'package:spryntr/Screens/Settings/widgets/edit_item_container.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class ItemContainer extends StatelessWidget {
  final VoidCallback onPressed;
  final Item produtitems;
  final bool deletebutton;
  const ItemContainer({
    Key? key,
    required this.onPressed,
    required this.produtitems,
    required this.deletebutton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double total = produtitems.prize * produtitems.quanitiy;
    return Container(
      height: 54.h,
      width: 400.w,
      color: CustomColor.kwhite,
      margin: EdgeInsets.only(
        left: 12.w,
        bottom: 16.h,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 40.h,
            width: 60.w,
            child: Image.asset(
              produtitems.imagepath,
              height: 40.h,
              width: 40.w,
              fit: BoxFit.contain,
            ),
          ),
          AddCustomSpace(width: 8.w, height: 0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: produtitems.name,
                  textStyle: CustomTextStyle.ktextTextStyle,
                  color: CustomColor.kblack,
                  fontWeight: CustomFontWeight.kMediumFontWeight),
              AddCustomSpace(width: 0, height: 4.h),
              CustomText(
                  text: "₦ ${produtitems.prize}",
                  textStyle: CustomTextStyle.kverysmallTextStyle,
                  color: CustomColor.klightgrey,
                  fontWeight: CustomFontWeight.kRegularWeight),
            ],
          ),
          AddCustomSpace(width: 18.w, height: 0),
          Container(
            height: 48.h,
            width: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: CustomColor.kblack),
            ),
            child: Center(
              child: CustomText(
                  text: produtitems.quanitiy.toString(),
                  textStyle: CustomTextStyle.ktextTextStyle,
                  color: CustomColor.kblack,
                  fontWeight: CustomFontWeight.kMediumFontWeight),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: CustomText(
                text: "₦ $total",
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kRegularWeight),
          ),
          deletebutton
              ? SizedBox(
                  height: 48.h,
                  width: 48.h,
                  child: OutlinedButton(
                    onPressed: onPressed,
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(color: CustomColor.kred)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r))),
                    ),
                    child: Image.asset(
                      CustomAssets.trashpng,
                      height: 20.h,
                      width: 20.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
