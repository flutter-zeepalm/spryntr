import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spryntr/Model/accountitemmodel.dart';
import 'package:spryntr/Screens/Settings/screens/add_user_screen.dart';
import 'package:spryntr/Screens/Settings/screens/save_discard.dart';
import 'package:spryntr/Screens/Settings/widgets/accounts_items.dart';
import 'package:spryntr/Screens/Settings/widgets/dotted_additem.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/typography.dart';

class StoreManagment extends StatelessWidget {
  const StoreManagment({
    Key? key,
  }) : super(key: key);

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
        child: Padding(
          padding: EdgeInsets.only(
            left: 27.w,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 24.h,
                    bottom: 36.h,
                  ),
                  child: CustomText(
                      text: "Store Manager",
                      textStyle: CustomTextStyle.kmedTextStyle,
                      color: CustomColor.kblack,
                      fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                ),
                AddCustomSpace(width: 0, height: 16.h),
                SizedBox(
                  height: 450.h,
                  width: 723.w,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: "Main Payout Account",
                            textStyle: CustomTextStyle.ksearchTextStyle,
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                        AddCustomSpace(width: 0, height: 16.h),
                        SizedBox(
                          height: 310.h,
                          width: 722.5.w,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: mainpayoutslist.length,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == payoutslist.length - 1) {
                                return DottedAddItem(
                                  onTap: () {
                                    Get.to(() => AddUser());
                                  },
                                  titletext: 'Add new User',
                                );
                              }
                              //var payoutfinal = payoutslist[index];
                              return AccountsItem(
                                  accountitems: mainpayoutslist[index]);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const AddCustomSpace(width: 10, height: 0);
                            },
                          ),
                        ),
                        AddCustomSpace(width: 0, height: 16.h),
                        CustomText(
                            text: "Main Payout Account",
                            textStyle: CustomTextStyle.ksearchTextStyle,
                            color: CustomColor.kblack,
                            fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                        AddCustomSpace(width: 0, height: 16.h),
                        SizedBox(
                          height: 310.h,
                          width: 722.5.w,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return AccountsItem(
                                  accountitems: accountitemlist[0]);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const AddCustomSpace(width: 10, height: 0);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AddCustomSpace(width: 0, height: 100.h),
                SaveAndDiscardChanges(saveontap: () {}, discardontap: () {}),

                //ProductManagemnet(),
                //const AboutSection(),
              ],
            )
          ]),
        ));
  }
}
