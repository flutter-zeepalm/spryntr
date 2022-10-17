import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';

import '../../../data/data.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 724.h,
      width: 786.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kContDesRadius),
          //border: Border.all(color: CustomColor.klightgrey),
          boxShadow: boxshadow,
          color: CustomColor.kwhite),
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 24.h,
                left: 50.w,
                bottom: 36.h,
              ),
              child: CustomText(
                  text: "About Spryntr",
                  textStyle: CustomTextStyle.kmedTextStyle,
                  color: CustomColor.kblack,
                  fontWeight: CustomFontWeight.kSemiBoldFontWeight),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: SizedBox(
                height: 459.h,
                width: 723.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: CustomText(
                      text: about,
                      textStyle: CustomTextStyle.ksearchTextStyle,
                      color: CustomColor.kblack,
                      fontWeight: CustomFontWeight.kRegularWeight),
                ),
              ),
            ),
            AddCustomSpace(width: 0, height: 36.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 300.w),
              child: SizedBox(
                height: 45.h,
                width: 172.w,
                child: OutlinedButton(
                    onPressed: () {},
                    child: CustomText(
                        text: "Visit Website",
                        textStyle: CustomTextStyle.ktextTextStyle,
                        color: CustomColor.kred,
                        fontWeight: CustomFontWeight.kMediumFontWeight)),
              ),
            )

            //const EditItemContainer(),
          ],
        )
      ]),
    );
  }
}
