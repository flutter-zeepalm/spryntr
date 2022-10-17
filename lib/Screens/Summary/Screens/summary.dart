// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spryntr/Model/mostorder.dart';
import 'package:spryntr/Screens/InStore/Screen/in_store_all.dart';
import 'package:spryntr/Screens/InStore/Widgets/raw_cash.dart';
import 'package:spryntr/Screens/Summary/Widgets/detail_description_container.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/custom_dropdown.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class Summary extends StatelessWidget {
  const Summary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1024.h,
      width: 1206.w,
      color: CustomColor.kwhite,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddCustomSpace(width: 0, height: 24.h),
            CustomText(
                text: "Summary",
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
            Row(
              children: [
                const RevenueDescriptionContainer(
                  value: '10,243.00',
                  revenuestatus: 'Total Revenue',
                  rate: 32.40,
                  israteshown: true,
                  imagepath: CustomAssets.prize,
                ),
                AddCustomSpace(width: 26.w, height: 0),
                const RevenueDescriptionContainer(
                  value: '10,243.00',
                  revenuestatus: 'Total Revenue (online)',
                  rate: 32.40,
                  israteshown: true,
                  imagepath: CustomAssets.prize,
                ),
                AddCustomSpace(width: 26.w, height: 0),
                const RevenueDescriptionContainer(
                  value: '10,243.00',
                  revenuestatus: 'Total Revenue (In-store)',
                  rate: 32.40,
                  israteshown: true,
                  imagepath: CustomAssets.prize,
                ),
                AddCustomSpace(width: 26.w, height: 0),
                const RevenueDescriptionContainer(
                  value: '1,234',
                  revenuestatus: 'Total Customers',
                  rate: 2.40,
                  israteshown: true,
                  imagepath: CustomAssets.accountsymbol,
                ),
                AddCustomSpace(width: 26.w, height: 0),
                const RevenueDescriptionContainer(
                  value: '1,234',
                  revenuestatus: 'Total Products',
                  rate: 32.40,
                  israteshown: false,
                  imagepath: CustomAssets.accountsymbol,
                ),
                AddCustomSpace(width: 26.w, height: 0),
              ],
            ),
            AddCustomSpace(width: 0, height: 40.h),
            Row(
              children: [
                Container(
                  height: 623.h,
                  width: 646.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kContDesRadius),
                    border: Border.all(color: CustomColor.klightgrey),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.w,
                          top: 24.h,
                          bottom: 16.h,
                          right: 24.w,
                        ),
                        child: Row(
                          children: [
                            CustomText(
                                text: "Order Report",
                                textStyle: CustomTextStyle.kmedTextStyle,
                                color: CustomColor.kblack,
                                fontWeight:
                                    CustomFontWeight.kSemiBoldFontWeight),
                            const Spacer(),
                            SizedBox(
                              height: 45.h,
                              width: 144.w,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  child: Row(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    children: [
                                      //AddCustomSpace(width: 10.w, height: 0),
                                      SvgPicture.asset(
                                        CustomAssets.filters,
                                        height: 20.h,
                                        width: 20.w,
                                        fit: BoxFit.contain,
                                      ),
                                      AddCustomSpace(width: 8.w, height: 0),
                                      CustomText(
                                          text: "Filter Order",
                                          textStyle:
                                              CustomTextStyle.ksearchTextStyle,
                                          color: CustomColor.kred,
                                          fontWeight: CustomFontWeight
                                              .kMediumFontWeight)
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          AddCustomSpace(width: 24.w, height: 0),
                          CustomText(
                              text: "Customer",
                              textStyle: CustomTextStyle.ksearchTextStyle,
                              color: CustomColor.kblack,
                              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                          AddCustomSpace(width: 128.w, height: 0),
                          CustomText(
                              text: "Menu",
                              textStyle: CustomTextStyle.ksearchTextStyle,
                              color: CustomColor.kblack,
                              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                          AddCustomSpace(width: 136.w, height: 0),
                          CustomText(
                              text: "Total Payment",
                              textStyle: CustomTextStyle.ksearchTextStyle,
                              color: CustomColor.kblack,
                              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                          AddCustomSpace(width: 61.w, height: 0),
                          CustomText(
                              text: "Status",
                              textStyle: CustomTextStyle.ksearchTextStyle,
                              color: CustomColor.kblack,
                              fontWeight: CustomFontWeight.kSemiBoldFontWeight),
                        ],
                      ),
                      AddCustomSpace(width: 0, height: 16.h),
                      Divider(
                        color: CustomColor.kblack,
                      ),
                      AddCustomSpace(width: 0, height: 26.h),
                      Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Table(
                          columnWidths: const {
                            0: FlexColumnWidth(1.3),
                            1: FlexColumnWidth(0.7),
                            2: FlexColumnWidth(1),
                            3: FlexColumnWidth(1.2),
                          },
                          children: [
                            TableRow(children: [
                              Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 20.r,
                                        //backgroundColor: CustomColor.klightblue,
                                        backgroundImage: const AssetImage(
                                          CustomAssets.avatar1,
                                        ),
                                      ),
                                      AddCustomSpace(width: 16.w, height: 0),
                                      CustomText(
                                          text: "Eren Jaegar",
                                          textStyle:
                                              CustomTextStyle.ksearchTextStyle,
                                          color: CustomColor.kblack,
                                          fontWeight:
                                              CustomFontWeight.kRegularWeight),
                                    ])
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "Spicy seasoned seafood noodles",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "₦125",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                Container(
                                  height: 25.h,
                                  width: 98.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: CustomColor.klightishblue
                                        .withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                        text: "Eren Jaegar",
                                        textStyle:
                                            CustomTextStyle.ksearchTextStyle,
                                        color: CustomColor.klightishblue,
                                        fontWeight:
                                            CustomFontWeight.kRegularWeight),
                                  ),
                                )
                              ]),
                            ]),
                            TableRow(children: [
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                            ]),
                            TableRow(children: [
                              Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 20.r,
                                        //backgroundColor:
                                        //CustomColor.kpendingyellow,
                                        backgroundImage: const AssetImage(
                                          CustomAssets.avatar2,
                                        ),
                                      ),
                                      AddCustomSpace(width: 16.w, height: 0),
                                      CustomText(
                                          text: "Reiner Braunn",
                                          textStyle:
                                              CustomTextStyle.ksearchTextStyle,
                                          color: CustomColor.kblack,
                                          fontWeight:
                                              CustomFontWeight.kRegularWeight),
                                    ])
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "Salted Pasta with mushroom sauce",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "₦145",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                Container(
                                  height: 25.h,
                                  width: 98.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: CustomColor.kpreparingpurple
                                        .withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                        text: "Preparing",
                                        textStyle:
                                            CustomTextStyle.ksearchTextStyle,
                                        color: CustomColor.kpreparingpurple,
                                        fontWeight:
                                            CustomFontWeight.kRegularWeight),
                                  ),
                                )
                              ]),
                            ]),
                            TableRow(children: [
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                            ]),
                            TableRow(children: [
                              Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 20.r,
                                        //backgroundColor: CustomColor.kred,
                                        backgroundImage: const AssetImage(
                                          CustomAssets.avatar3,
                                        ),
                                      ),
                                      AddCustomSpace(width: 16.w, height: 0),
                                      CustomText(
                                          text: "Levi Ackerman",
                                          textStyle:
                                              CustomTextStyle.ksearchTextStyle,
                                          color: CustomColor.kblack,
                                          fontWeight:
                                              CustomFontWeight.kRegularWeight),
                                    ])
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "Beef dumpling in hot and sour soup",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "₦105",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                Container(
                                  height: 25.h,
                                  width: 98.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: CustomColor.kpendingyellow
                                        .withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                        text: "Pending",
                                        textStyle:
                                            CustomTextStyle.ksearchTextStyle,
                                        color: CustomColor.kpendingyellow,
                                        fontWeight:
                                            CustomFontWeight.kRegularWeight),
                                  ),
                                )
                              ]),
                            ]),
                            TableRow(children: [
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                            ]),
                            TableRow(children: [
                              Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 20.r,
                                        //backgroundColor: CustomColor.klightblue,
                                        backgroundImage: const AssetImage(
                                          CustomAssets.avatar4,
                                        ),
                                      ),
                                      AddCustomSpace(width: 16.w, height: 0),
                                      CustomText(
                                          text: "Historia Reiss",
                                          textStyle:
                                              CustomTextStyle.ksearchTextStyle,
                                          color: CustomColor.kblack,
                                          fontWeight:
                                              CustomFontWeight.kRegularWeight),
                                    ])
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "Hot spicy fried rice with omelet",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "₦45",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                Container(
                                  height: 25.h,
                                  width: 98.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: CustomColor.klightishblue
                                        .withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                        text: "Completed",
                                        textStyle:
                                            CustomTextStyle.ksearchTextStyle,
                                        color: CustomColor.klightishblue,
                                        fontWeight:
                                            CustomFontWeight.kRegularWeight),
                                  ),
                                )
                              ]),
                            ]),
                            TableRow(children: [
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                            ]),
                            TableRow(children: [
                              Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 20.r,
                                        //backgroundColor: CustomColor.klightblue,
                                        backgroundImage: const AssetImage(
                                          CustomAssets.avatar5,
                                        ),
                                      ),
                                      AddCustomSpace(width: 16.w, height: 0),
                                      CustomText(
                                          text: "Hanji Zoe",
                                          textStyle:
                                              CustomTextStyle.ksearchTextStyle,
                                          color: CustomColor.kblack,
                                          fontWeight:
                                              CustomFontWeight.kRegularWeight),
                                    ])
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "Hot spicy fried rice with omelet",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "₦245",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                Container(
                                  height: 25.h,
                                  width: 98.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: CustomColor.klightishblue
                                        .withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                        text: "Completed",
                                        textStyle:
                                            CustomTextStyle.ksearchTextStyle,
                                        color: CustomColor.klightishblue,
                                        fontWeight:
                                            CustomFontWeight.kRegularWeight),
                                  ),
                                )
                              ]),
                            ]),
                            TableRow(children: [
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                              AddCustomSpace(width: 0, height: 10.h),
                            ]),
                            TableRow(children: [
                              Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 20.r,
                                        // backgroundColor: CustomColor.klightblue,
                                        backgroundImage: const AssetImage(
                                          CustomAssets.avatar6,
                                        ),
                                      ),
                                      AddCustomSpace(width: 16.w, height: 0),
                                      CustomText(
                                          text: "Armin Arlert",
                                          textStyle:
                                              CustomTextStyle.ksearchTextStyle,
                                          color: CustomColor.kblack,
                                          fontWeight:
                                              CustomFontWeight.kRegularWeight),
                                    ])
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "Hot spicy fried rice with omelet",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                CustomText(
                                    text: "₦435",
                                    textStyle: CustomTextStyle.ksearchTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kRegularWeight),
                              ]),
                              Column(children: [
                                Container(
                                  height: 25.h,
                                  width: 98.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.r),
                                    color: CustomColor.klightishblue
                                        .withOpacity(0.1),
                                  ),
                                  child: Center(
                                    child: CustomText(
                                        text: "Completed",
                                        textStyle:
                                            CustomTextStyle.ksearchTextStyle,
                                        color: CustomColor.klightishblue,
                                        fontWeight:
                                            CustomFontWeight.kRegularWeight),
                                  ),
                                )
                              ]),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                AddCustomSpace(width: 53.w, height: 0),
                Column(
                  children: [
                    Container(
                      height: 440.h,
                      width: 402.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kContDesRadius),
                        border: Border.all(color: CustomColor.klightgrey),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 24.w,
                              top: 24.h,
                              bottom: 20.h,
                              right: 24.w,
                            ),
                            child: Row(
                              children: [
                                CustomText(
                                    text: "Most Ordered",
                                    textStyle: CustomTextStyle.kmedTextStyle,
                                    color: CustomColor.kblack,
                                    fontWeight:
                                        CustomFontWeight.kSemiBoldFontWeight),
                                const Spacer(),
                                Container(
                                  height: 45.h,
                                  width: 109.w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(kContDesRadius),
                                    border:
                                        Border.all(color: CustomColor.kblack),
                                  ),
                                  child: DropDown(),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: CustomColor.kblack,
                          ),
                          AddCustomSpace(width: 0, height: 20.h),
                          SizedBox(
                            height: 211.h,
                            width: 354.w,
                            child: ListView.builder(
                              padding: const EdgeInsets.all(0),
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return MostOrderListTile(
                                  mostOrder: mostorderlist[index],
                                );
                              },
                              itemCount: mostorderlist.length,
                            ),
                          ),
                          AddCustomSpace(width: 0, height: 32.h),
                          SizedBox(
                            height: 45.h,
                            width: 354.w,
                            child: OutlinedButton(
                                onPressed: () {},
                                child: CustomText(
                                    text: "View All",
                                    textStyle: CustomTextStyle.ktextTextStyle,
                                    color: CustomColor.kred,
                                    fontWeight:
                                        CustomFontWeight.kMediumFontWeight)),
                          ),
                        ],
                      ),
                    ),
                    AddCustomSpace(width: 0, height: 23.h),
                    Container(
                      height: 183.h,
                      width: 403.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kContDesRadius),
                        border: Border.all(color: CustomColor.klightgrey),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 24.h,
                                bottom: 13.h,
                              ),
                              child: Row(
                                children: [
                                  CustomText(
                                      text: "Payment Method",
                                      textStyle: CustomTextStyle.ktextTextStyle,
                                      color: CustomColor.kblack,
                                      fontWeight:
                                          CustomFontWeight.kMediumFontWeight),
                                  const Spacer(),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 30.sp,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: CustomColor.kblack,
                            ),
                            CashRow(
                              cash: '500',
                              sales: 50,
                              percentage: 50,
                              percentcolor: CustomColor.kdarkblue,
                            ),
                            AddCustomSpace(width: 0, height: 16.h),
                            CashRow(
                              cash: '200',
                              sales: 30,
                              percentage: 50,
                              percentcolor: CustomColor.kdarkpurple,
                            ),
                          ],
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

class MostOrderListTile extends StatelessWidget {
  final MostOrder mostOrder;
  const MostOrderListTile({
    Key? key,
    required this.mostOrder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 10.w),
      leading: Image.asset(
        mostOrder.imagepath,
        height: 40.h,
        width: 41.w,
        fit: BoxFit.contain,
      ),
      title: CustomText(
          text: mostOrder.name,
          textStyle: CustomTextStyle.ksearchTextStyle,
          color: CustomColor.kblack,
          fontWeight: CustomFontWeight.kMediumFontWeight),
      subtitle: CustomText(
          text: "${mostOrder.items} items ordered",
          textStyle: CustomTextStyle.kverysmallTextStyle,
          color: CustomColor.klightgrey,
          fontWeight: CustomFontWeight.kRegularWeight),
    );
  }
}
