// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spryntr/Model/items.dart';
import 'package:spryntr/Screens/InStore/Widgets/Prize_detail_section.dart';
import 'package:spryntr/Screens/InStore/Widgets/item_container.dart';
import 'package:spryntr/Screens/InStore/Widgets/item_section.dart';
import 'package:spryntr/Screens/Settings/widgets/all_product.dart';

import 'package:spryntr/Widgets/add_space.dart';

import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/typography.dart';

class InBoundSection extends StatefulWidget {
  const InBoundSection({
    Key? key,
  }) : super(key: key);

  @override
  State<InBoundSection> createState() => _InBoundSectionState();
}

class _InBoundSectionState extends State<InBoundSection>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1024.h,
          width: 733.w,
          color: CustomColor.kwhite,
          child: Padding(
            padding: EdgeInsets.only(
              left: 24.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddCustomSpace(width: 0, height: 24.h),
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
                      ],
                    ),
                    AddCustomSpace(width: 226.w, height: 0),
                    Container(
                        margin: EdgeInsets.only(top: 32.h),
                        height: 60.h,
                        width: 280.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: CustomColor.klightgrey),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h,
                            ),
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: CustomTextStyle.ksearchTextStyle.copyWith(
                                color: CustomColor
                                    .klightgrey), //TextStyle( color: CustomColor.klightgrey,),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 25.sp,
                              color: CustomColor.klightgrey,
                            ),
                          ),
                        ))
                  ],
                ),
                AddCustomSpace(width: 0, height: 24.h),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 33.h,
                    width: 738.w,
                    child: TabBar(
                        indicatorColor: CustomColor.kred,
                        isScrollable: true,
                        labelColor: CustomColor.kred,
                        labelStyle: CustomTextStyle.ksearchTextStyle.copyWith(
                          fontWeight: CustomFontWeight.kSemiBoldFontWeight,
                        ),
                        unselectedLabelColor: CustomColor.kblack,
                        controller: TabController(length: 7, vsync: this),
                        tabs: const [
                          Tab(
                            text: "All Products",
                          ),
                          Tab(
                            text: "Baby",
                          ),
                          Tab(
                            text: "Beer, wine & Spirits",
                          ),
                          Tab(
                            text: "Beverages",
                          ),
                          Tab(
                            text: "Bread & Bakery",
                          ),
                          Tab(
                            text: "Breakfast & Cereal",
                          ),
                          Tab(
                            text: "Dairy",
                          ),
                        ]),
                  ),
                ),
                AddCustomSpace(width: 0, height: 24.h),
                SizedBox(
                  height: 752.h,
                  width: 711.w,
                  child: TabBarView(
                      controller: TabController(length: 7, vsync: this),
                      children: [
                        MyGridView(), //ItemDetail(currentitem: itemlist[0]),
                        AllProducts(),
                        AllProducts(),
                        AllProducts(),
                        AllProducts(),
                        AllProducts(),
                        AllProducts(),
                      ]),
                ),

                //ItemDetail(currentitem: null,),
              ],
            ),
          ),
        ),
        const Spacer(),
        const PrizeSection(),
      ],
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 519.h,
        width: 711.w,
        child: GridView.builder(
            padding: EdgeInsets.only(top: 10.h, left: 5.w, right: 5.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 355.w / 157.h,
                crossAxisSpacing: 10,
                mainAxisSpacing: 40.h,
                crossAxisCount: 2),
            itemCount: itemlist.length,
            itemBuilder: (BuildContext ctx, index) {
              return ItemContainer(
                items: itemlist[index],
                onTap: () {
                  Get.to(() => ItemDetail(currentitem: itemlist[index]));
                },
              );
            }));
  }
}
