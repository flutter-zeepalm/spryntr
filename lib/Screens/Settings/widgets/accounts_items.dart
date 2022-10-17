import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spryntr/Model/accountitemmodel.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';

import '../../../data/data.dart';

class AccountsItem extends StatelessWidget {
  final AccountItemModel accountitems;
  const AccountsItem({
    Key? key,
    required this.accountitems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 307.h,
      width: 220.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kContDesRadius),
        border: Border.all(color: CustomColor.klightgrey),
      ),
      child: Column(children: [
        SizedBox(
          child: Column(children: [
            AddCustomSpace(width: 0, height: 20.h),
            Image.asset(
              accountitems.accountimagepath,
              height: 137.h,
              width: 150.w,
              fit: BoxFit.contain,
            ),
            AddCustomSpace(width: 0, height: 16.h),
            CustomText(
                text: accountitems.accountname,
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kMediumFontWeight),
            AddCustomSpace(width: 0, height: 8.h),
            CustomText(
                text: accountitems.accountid.toString(),
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.klightgrey,
                fontWeight: CustomFontWeight.kRegularWeight),
            AddCustomSpace(width: 0, height: 8.h),
            CustomText(
                text: accountitems.accountno,
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.klightgrey,
                fontWeight: CustomFontWeight.kRegularWeight),
          ]),
        ),
        const Spacer(),
        Container(
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
        )
      ]),
    );
  }
}
