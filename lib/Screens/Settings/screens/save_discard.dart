import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class SaveAndDiscardChanges extends StatelessWidget {
  final VoidCallback saveontap;
  final VoidCallback discardontap;

  const SaveAndDiscardChanges({
    Key? key,
    required this.saveontap,
    required this.discardontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        height: 45.h,
        width: 172.w,
        child: OutlinedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                  BorderSide(color: CustomColor.kred)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kContDesRadius))),
            ),
            onPressed: discardontap,
            child: CustomText(
                text: "Discard Changes",
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.kred,
                fontWeight: CustomFontWeight.kSemiBoldFontWeight)),
      ),
      AddCustomSpace(width: 8.w, height: 0),
      SizedBox(
        height: 45.h,
        width: 172.w,
        child: ElevatedButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                  BorderSide(color: CustomColor.kred)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kContDesRadius))),
            ),
            onPressed: saveontap,
            child: CustomText(
                text: "Save Changes",
                textStyle: CustomTextStyle.ktextTextStyle,
                color: CustomColor.kwhite,
                fontWeight: CustomFontWeight.kSemiBoldFontWeight)),
      ),
    ]);
  }
}
