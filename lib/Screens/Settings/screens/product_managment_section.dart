import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spryntr/Screens/Settings/screens/save_discard.dart';
import 'package:spryntr/Screens/Settings/screens/setting_screen.dart';
import 'package:spryntr/Screens/Settings/widgets/all_product.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class ProductManagemnet extends StatefulWidget {
  const ProductManagemnet({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductManagemnet> createState() => _ProductManagemnetState();
}

class _ProductManagemnetState extends State<ProductManagemnet>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 724.h,
      width: 786.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kContDesRadius),
          //border: Border.all(color: CustomColor.klightgrey),
          boxShadow: boxshadow,
          color: CustomColor.kwhite),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24.h),
            child: Row(
              children: [
                CustomText(
                    text: "Products Management",
                    textStyle: CustomTextStyle.kmedTextStyle,
                    color: CustomColor.kblack,
                    fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                const Spacer(),
                SizedBox(
                  height: 52.h,
                  width: 178.w,
                  child: OutlinedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(color: CustomColor.kblack)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(kContRadius))),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          AddCustomSpace(width: 2.w, height: 0),
                          SvgPicture.asset(CustomAssets.blackfilter),
                          AddCustomSpace(width: 4.w, height: 0),
                          CustomText(
                              text: "Manage Categories",
                              textStyle: CustomTextStyle.ksearchTextStyle,
                              color: CustomColor.kblack,
                              fontWeight: CustomFontWeight.kMediumFontWeight),
                        ],
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 33.h,
            width: 700.w,
            child: TabBar(
                isScrollable: true,
                labelColor: CustomColor.kred,
                labelStyle: CustomTextStyle.ksmallTextStyle.copyWith(
                  fontWeight: CustomFontWeight.kSemiBoldFontWeight,
                ),
                unselectedLabelColor: CustomColor.kblack,
                indicatorColor: CustomColor.kred,
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
          AddCustomSpace(width: 0, height: 36.h),
          SizedBox(
            height: 450.h,
            width: 695.w,
            child: TabBarView(
                controller: TabController(length: 7, vsync: this),
                children: const [
                  AllProducts(),
                  AllProducts(),
                  AllProducts(),
                  AllProducts(),
                  AllProducts(),
                  AllProducts(),
                  AllProducts(),
                ]),
          ),
          AddCustomSpace(width: 0, height: 36.h),
          SaveAndDiscardChanges(saveontap: () {}, discardontap: () {})
        ],
      ),
    );
  }
}
