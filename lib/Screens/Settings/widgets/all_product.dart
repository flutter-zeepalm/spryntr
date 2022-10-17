import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spryntr/Model/product_model.dart';
import 'package:spryntr/Screens/Settings/screens/add_new_item.dart';
import 'package:spryntr/Screens/Settings/screens/save_discard.dart';
import 'package:spryntr/Screens/Settings/widgets/dotted_additem.dart';
import 'package:spryntr/Screens/Settings/widgets/edit_item_container.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/data/data.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 450.h,
          width: 695.w,
          color: CustomColor.kwhite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 519.h,
                    width: 711.w,
                    child: GridView.builder(
                        padding:
                            EdgeInsets.only(top: 10.h, left: 5.w, right: 5.w),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 220.w / 400.h,
                            crossAxisSpacing: 20.h,
                            mainAxisSpacing: 10.h,
                            crossAxisCount: 3),
                        itemCount: productlist.length + 1,
                        itemBuilder: (BuildContext ctx, index) {
                          if (index == 0) {
                            return DottedAddItem(
                              onTap: () {
                                Get.to(() => const AddNewItem());
                              },
                              titletext: 'Add new Item',
                            );
                          }
                          var finalList = productlist[index - 1];
                          return ProductItems(
                            product: finalList,
                            onTap: () {},
                          );
                        })),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
