import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class UploadContainer extends StatelessWidget {
  final VoidCallback onTap;
  const UploadContainer({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 307.h,
        width: 229.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kContRadius),
          border: Border.all(color: CustomColor.klightgrey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              CustomAssets.uploadsvg,
              height: 96.h,
              width: 96.h,
              fit: BoxFit.contain,
            ),
            AddCustomSpace(width: 0, height: 12.h),
            CustomText(
                text: "Upload / Scan Image",
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kRegularWeight),
          ],
        ),
      ),
    );
  }
}
