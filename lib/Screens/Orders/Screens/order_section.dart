import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Screens/Orders/Widgets/order_list_container.dart';
import 'package:spryntr/Screens/responsive_layout.dart';

import 'package:spryntr/Widgets/add_space.dart';

import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilderScreen(
        desktop: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //AddCustomSpace(width: 0, height: 24.h),
                CustomText(
                    text: "Makplang Silas",
                    textStyle: CustomTextStyle.kbigStyle,
                    color: CustomColor.kblack,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                AddCustomSpace(width: 0, height: 9.h),
                CustomText(
                    text: "Tuesday, 2 Feb 2021",
                    textStyle: CustomTextStyle.ktextTextStyle,
                    color: CustomColor.kblack,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                AddCustomSpace(width: 0, height: 40.h),
                SizedBox(
                  height: 778.h,
                  width: 1160.w,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return const OrderListContainer();
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return AddCustomSpace(width: 40.w, height: 0);
                    },
                  ),
                )
              ]),
        ),
        mobile: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //AddCustomSpace(width: 0, height: 24.h),
                CustomText(
                    text: "Makplang Silas",
                    textStyle: CustomTextStyle.kbigStyle.copyWith(fontSize: 20),
                    color: CustomColor.kblack,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                AddCustomSpace(width: 0, height: 9.h),
                CustomText(
                    text: "Tuesday, 2 Feb 2021",
                    textStyle:
                        CustomTextStyle.ktextTextStyle.copyWith(fontSize: 18),
                    color: CustomColor.kblack,
                    fontWeight: CustomFontWeight.kBoldFontWeight),
                AddCustomSpace(width: 0, height: 40.h),
                SizedBox(
                  height: 778.h,
                  width: double.infinity,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return const OrderListContainer();
                    },
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (BuildContext context, int index) {
                      return AddCustomSpace(width: 40.w, height: 0);
                    },
                  ),
                )
              ]),
        ));
  }
}
