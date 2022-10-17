// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';

import '../../../data/data.dart';

class DottedAddItem extends StatelessWidget {
  final String titletext;
  final VoidCallback onTap;
  const DottedAddItem({
    Key? key,
    required this.titletext,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DottedBorder(
        strokeWidth: 1,
        color: CustomColor.kred,
        borderType: BorderType.RRect,
        radius: Radius.circular(kContDesRadius),
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 307.h,
          width: 220.w,
          child: Column(children: [
            AddCustomSpace(width: 0, height: 115.h),
            Icon(
              Icons.add,
              size: 30.sp,
              color: CustomColor.kred,
            ),
            AddCustomSpace(width: 0, height: 20.h),
            CustomText(
                text: titletext,
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.kred,
                fontWeight: CustomFontWeight.kSemiBoldFontWeight),
          ]),
        ),
      ),
    );
  }
}
