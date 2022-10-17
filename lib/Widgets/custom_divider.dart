import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/data/data.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    required bool selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
        horizontal: 12.w,
      ),
      child: Divider(
        color: CustomColor.klightgrey,
      ),
    );
  }
}
