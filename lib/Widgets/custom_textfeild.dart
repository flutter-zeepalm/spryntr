import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Screens/responsive_layout.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class TextFeildContainer extends StatelessWidget {
  final String text;
  const TextFeildContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 337.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: text,
              textStyle: CustomTextStyle.ksmallTextStyle,
              color: CustomColor.kblack,
              fontWeight: CustomFontWeight.kRegularWeight),
          AddCustomSpace(width: 0, height: 8.h),
        ],
      ),
    );
  }
}
