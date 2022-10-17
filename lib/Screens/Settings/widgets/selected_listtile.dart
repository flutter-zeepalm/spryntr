// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spryntr/Model/setting_slider.dart';
import 'package:spryntr/Widgets/text_widgets.dart';

import '../../../data/data.dart';

class SelectionListTile extends StatelessWidget {
  final SettingSlider slider;
  final VoidCallback ontap;
  final bool enable;
  const SelectionListTile({
    Key? key,
    required this.slider,
    required this.ontap,
    required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: enable ? CustomColor.kred.withOpacity(0.2) : CustomColor.kwhite,
      child: Padding(
        padding: EdgeInsets.only(bottom: 5.h),
        child: ListTile(
          onTap: ontap,
          contentPadding: const EdgeInsets.all(0),
          tileColor: CustomColor.kred,
          horizontalTitleGap: 4.h,
          leading: Padding(
            padding: EdgeInsets.only(left: 20.w, top: 10.h),
            child: SvgPicture.asset(slider.imagepath),
          ),
          //minLeadingWidth: 5.w,
          title: CustomText(
              text: slider.title,
              textStyle: CustomTextStyle.ksearchTextStyle,
              color: enable ? CustomColor.kred : CustomColor.kblack,
              fontWeight: CustomFontWeight.kMediumFontWeight),
          subtitle: CustomText(
              text: slider.subtitle,
              textStyle: CustomTextStyle.kverysmallTextStyle,
              color: enable ? CustomColor.kred : CustomColor.kblack,
              fontWeight: CustomFontWeight.kMediumFontWeight),
          trailing: Container(
            height: 39.h,
            width: 4.w,
            color: enable ? CustomColor.kred : CustomColor.kwhite,
          ),
        ),
      ),
    );
  }
}
