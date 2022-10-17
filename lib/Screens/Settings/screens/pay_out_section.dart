import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spryntr/Model/accountitemmodel.dart';
import 'package:spryntr/Screens/Settings/screens/add_new_payout.dart';
import 'package:spryntr/Screens/Settings/widgets/accounts_items.dart';
import 'package:spryntr/Screens/Settings/widgets/dotted_additem.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/typography.dart';

class PayOutSection extends StatelessWidget {
  const PayOutSection({
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
                      text: "Pay Out",
                      textStyle: CustomTextStyle.kmedTextStyle,
                      color: CustomColor.kblack,
                      fontWeight: CustomFontWeight.kSemiBoldFontWeight),
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
                  child: Row(
                    children: [
                      SizedBox(
                        height: 310.h,
                        width: 600.w,
                        child: ListView.separated(
                          shrinkWrap: true,
                          //physics: const ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: payoutslist.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (index == payoutslist.length - 1) {
                              return DottedAddItem(
                                onTap: () {
                                  Get.to(() => const AddAccount());
                                },
                                titletext: 'Add new Account',
                              );
                            }
                            var payoutfinal = payoutslist[index];
                            return AccountsItem(accountitems: payoutfinal);
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const AddCustomSpace(width: 10, height: 0);
                          },
                        ),
                      ),
                      //AddCustomSpace(width: 10.w, height: 0),
                    ],
                  ),
                ),
                AddCustomSpace(width: 0, height: 150.h),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                    height: 45.h,
                    width: 172.w,
                    child: OutlinedButton(
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              BorderSide(color: CustomColor.kred)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(kContDesRadius))),
                        ),
                        onPressed: () {},
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
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(kContDesRadius))),
                        ),
                        onPressed: () {},
                        child: CustomText(
                            text: "Save Changes",
                            textStyle: CustomTextStyle.ktextTextStyle,
                            color: CustomColor.kwhite,
                            fontWeight: CustomFontWeight.kSemiBoldFontWeight)),
                  ),
                ])

                //ProductManagemnet(),
                //const AboutSection(),
              ],
            )
          ]),
        ));
  }
}
