// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:spryntr/Model/items.dart';
import 'package:spryntr/Model/product_model.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/assets_path.dart';
import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/typography.dart';

class ItemDetail extends StatefulWidget {
  final Item currentitem;
  const ItemDetail({
    Key? key,
    required this.currentitem,
  }) : super(key: key);

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

late int qunatity;

class _ItemDetailState extends State<ItemDetail> {
  @override
  void initState() {
    qunatity = 0;
    widget.currentitem.quanitiy = qunatity;
    super.initState();
  }

  void decrementCounter() {
    setState(() {
      if (qunatity > 0) {
        qunatity--;
      } else {
        qunatity = 0;
      }
    });
  }

  void incrementCounter() {
    setState(() {
      qunatity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 519.h,
              width: 711.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kContRadius),
                border: Border.all(color: CustomColor.klightgrey),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  widget.currentitem.imagepath,
                  height: 510.h,
                  width: 300.w,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            AddCustomSpace(width: 0, height: 44.5.h),
            CustomText(
                text: widget.currentitem.name,
                textStyle: CustomTextStyle.kbigStyle,
                color: CustomColor.kblack,
                fontWeight: CustomFontWeight.kBoldFontWeight),
            AddCustomSpace(width: 0, height: 16.h),
            CustomText(
                text: "₦ ${widget.currentitem.prize}",
                textStyle: CustomTextStyle.kbigStyle,
                color: CustomColor.klightgrey,
                fontWeight: CustomFontWeight.kBoldFontWeight),
            AddCustomSpace(width: 0, height: 16.h),
            Row(
              children: [
                Container(
                  height: 64.h,
                  width: 144.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: CustomColor.klightgrey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            incrementCounter();
                          });
                        },
                        child: Icon(
                          Icons.add,
                          color: CustomColor.kblack,
                          size: 30.sp,
                        ),
                      ),
                      AddCustomSpace(width: 10.w, height: 0),
                      VerticalDivider(
                        color: CustomColor.klightgrey,
                      ),
                      // AddCustomSpace(width: 8.h, height: 0),
                      SizedBox(
                        width: 30.w,
                        child: Center(
                          child: CustomText(
                              text: qunatity.toString(),
                              textStyle: CustomTextStyle.ktextTextStyle,
                              color: CustomColor.kblack,
                              fontWeight: CustomFontWeight.kMediumFontWeight),
                        ),
                      ),
                      // AddCustomSpace(width: 8.h, height: 0),
                      VerticalDivider(
                        color: CustomColor.klightgrey,
                      ),
                      InkWell(
                        onTap: (() {
                          decrementCounter();
                        }),
                        child: Icon(
                          Icons.remove,
                          color: CustomColor.kblack,
                        ),
                      )
                    ],
                  ),
                ),
                AddCustomSpace(width: 24.w, height: 0),
                SizedBox(
                  height: 60.h,
                  width: 100.w,
                  child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          qunatity = 0;
                        });
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            CustomAssets.cross,
                            height: 24.h,
                            width: 24.w,
                          ),
                          AddCustomSpace(width: 10.w, height: 0),
                          CustomText(
                              text: "Clear",
                              textStyle: CustomTextStyle.ktextTextStyle,
                              color: CustomColor.kred,
                              fontWeight: CustomFontWeight.kRegularWeight),
                        ],
                      )),
                ),
                AddCustomSpace(width: 235.w, height: 0),
                SizedBox(
                  height: 80.h,
                  width: 200.w,
                  child: ElevatedButton(
                      onPressed: () {
                        prizeitemlist.add(bottle);
                      },
                      child: Row(
                        children: [
                          CustomText(
                              text: "Add To Bag",
                              textStyle: CustomTextStyle.kmedTextStyle,
                              color: CustomColor.kwhite,
                              fontWeight: CustomFontWeight.kRegularWeight),
                          AddCustomSpace(width: 10.w, height: 0),
                          SvgPicture.asset(
                            CustomAssets.arrowforward,
                            height: 32.h,
                            width: 32.w,
                          ),
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
