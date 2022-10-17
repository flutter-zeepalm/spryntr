// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final String iconpath;
  final bool isNotification;
  final int notification;
  final VoidCallback ontap;
  final bool enabled;
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.iconpath,
    required this.isNotification,
    required this.notification,
    required this.ontap,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: enabled ? CustomColor.kwhite.withOpacity(0.2) : Colors.transparent,
      child: ListTile(
        contentPadding: EdgeInsets.only(
          left: 0.w,
          right: 10.w,
        ),
        onTap: ontap,
        selectedTileColor: CustomColor.kwhite,
        leading: SizedBox(
          width: 70.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: double.infinity,
                width: 6.w,
                color: enabled ? CustomColor.kwhite : CustomColor.kblack,
              ),
              AddCustomSpace(width: 20.w, height: 0),
              SvgPicture.asset(
                iconpath,
                height: 18.h,
                width: 22.w,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
        title: CustomText(
            text: title,
            textStyle: CustomTextStyle.ktextTextStyle,
            color: enabled ? CustomColor.kwhite : CustomColor.kopacitygrey,
            fontWeight: CustomFontWeight.kMediumFontWeight),
        trailing: isNotification
            ? CircleAvatar(
                backgroundColor: CustomColor.kpendingyellow,
                radius: 10.r,
                child: Center(
                  child: CustomText(
                      text: notification.toString(),
                      textStyle: CustomTextStyle.ksearchTextStyle,
                      color: CustomColor.kwhite,
                      fontWeight: CustomFontWeight.kRegularWeight),
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
