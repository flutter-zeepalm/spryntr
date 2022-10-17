// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Model/items.dart';
import 'package:spryntr/Screens/InStore/Widgets/item_section.dart';
import 'package:spryntr/Widgets/Item_container.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/custom_divider.dart';
import 'package:spryntr/Widgets/custom_text_feild.dart';
import 'package:spryntr/Widgets/drawer_listtile.dart';
import 'package:spryntr/Widgets/prize_row.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/assets_path.dart';
import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/typography.dart';

class ItemContainer extends StatefulWidget {
  final Item items;
  final VoidCallback onTap;
  const ItemContainer({
    Key? key,
    required this.items,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  late int quantity;

  @override
  void initState() {
    quantity = 0;
    widget.items.quanitiy = quantity;
    super.initState();
  }

  void decrementCounter() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      } else {
        quantity = 0;
      }
    });
  }

  void incrementCounter() {
    setState(() {
      quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 100.h,
        width: 335.w,
        decoration: BoxDecoration(
          boxShadow: boxshadow,
          color: CustomColor.kwhite,
        ),
        child: Row(
          children: [
            Image.asset(
              widget.items.imagepath,
              height: 125.h,
              width: 108.w,
              fit: BoxFit.contain,
            ),
            AddCustomSpace(width: 16.w, height: 0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddCustomSpace(width: 0, height: 16.h),
                CustomText(
                    text: widget.items.name,
                    textStyle: CustomTextStyle.ktextTextStyle,
                    color: CustomColor.kblack,
                    fontWeight: CustomFontWeight.kMediumFontWeight),
                AddCustomSpace(width: 0, height: 4.h),
                CustomText(
                    text: "₦ ${widget.items.prize}",
                    textStyle: CustomTextStyle.ktextTextStyle,
                    color: CustomColor.klightgrey,
                    fontWeight: CustomFontWeight.kRegularWeight),
                AddCustomSpace(width: 0, height: 21.h),
                Row(
                  children: [
                    Container(
                      height: 48.h,
                      width: 121.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: CustomColor.klightgrey),
                      ),
                      child: Row(
                        children: [
                          AddCustomSpace(width: 8.w, height: 0),
                          InkWell(
                            onTap: () {
                              incrementCounter();
                            },
                            child: Icon(
                              Icons.add,
                              color: CustomColor.kblack,
                              size: 30.sp,
                            ),
                          ),
                          VerticalDivider(
                            color: CustomColor.klightgrey,
                          ),
                          AddCustomSpace(width: 3.w, height: 0),
                          SizedBox(
                            width: 17.w,
                            child: Center(
                              child: CustomText(
                                  text: quantity.toString(),
                                  textStyle: CustomTextStyle.ktextTextStyle,
                                  color: CustomColor.kblack,
                                  fontWeight:
                                      CustomFontWeight.kMediumFontWeight),
                            ),
                          ),
                          AddCustomSpace(width: 1.w, height: 0),
                          VerticalDivider(
                            color: CustomColor.klightgrey,
                          ),
                          InkWell(
                            onTap: () {
                              decrementCounter();
                            },
                            child: Icon(
                              Icons.remove,
                              color: CustomColor.kblack,
                              size: 30.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AddCustomSpace(width: 8.w, height: 0),
                    SizedBox(
                      height: 48.h,
                      width: 48.h,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: CustomColor.klightblue)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r))),
                        ),
                        child: Image.asset(
                          CustomAssets.shoppingpng,
                          height: 20.h,
                          width: 20.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
