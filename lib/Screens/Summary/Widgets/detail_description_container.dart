import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class RevenueDescriptionContainer extends StatelessWidget {
  final double rate;
  final String value;
  final bool israteshown;
  final String imagepath;
  final String revenuestatus;

  const RevenueDescriptionContainer({
    Key? key,
    required this.rate,
    required this.value,
    required this.israteshown,
    required this.imagepath,
    required this.revenuestatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143.h,
      width: 199.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kContDesRadius),
        border: Border.all(color: CustomColor.klightgrey),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddCustomSpace(width: 0, height: 16.h),
            Row(
              children: [
                SvgPicture.asset(
                  CustomAssets.prize,
                  height: 38.h,
                  width: 38.h,
                  fit: BoxFit.contain,
                ),
                AddCustomSpace(width: 12.w, height: 0),
                israteshown
                    ? CustomText(
                        text: "$rate%",
                        textStyle: CustomTextStyle.kverysmallTextStyle,
                        color: CustomColor.klightblue,
                        fontWeight: CustomFontWeight.kMediumFontWeight)
                    : const SizedBox(),
                AddCustomSpace(width: 6.w, height: 0),
                israteshown
                    ? SvgPicture.asset(
                        CustomAssets.arrowup,
                        height: 18.h,
                        width: 18.w,
                        fit: BoxFit.contain,
                      )
                    : const SizedBox(),
              ],
            ),
            AddCustomSpace(width: 0, height: 8.h),
            CustomText(
                text: "₦$value",
                textStyle: CustomTextStyle.kmedhighTextStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kSemiBoldFontWeight),
            AddCustomSpace(width: 0, height: 8.h),
            CustomText(
                text: revenuestatus,
                textStyle: CustomTextStyle.ksearchTextStyle,
                color: CustomColor.klightgrey,
                fontWeight: CustomFontWeight.kMediumFontWeight),
          ],
        ),
      ),
    );
  }
}
