// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Model/setting_slider.dart';
import 'package:spryntr/Screens/Settings/screens/about_section.dart';
import 'package:spryntr/Screens/Settings/screens/add_account.dart';
import 'package:spryntr/Screens/Settings/screens/add_new_item.dart';
import 'package:spryntr/Screens/Settings/screens/add_user_screen.dart';
import 'package:spryntr/Screens/Settings/screens/pay_out_section.dart';
import 'package:spryntr/Screens/Settings/screens/product_managment_section.dart';
import 'package:spryntr/Screens/Settings/screens/security.dart';
import 'package:spryntr/Screens/Settings/screens/store_managment.dart';
import 'package:spryntr/Screens/Settings/widgets/accounts_items.dart';
import 'package:spryntr/Screens/Settings/widgets/dotted_additem.dart';
import 'package:spryntr/Screens/Settings/widgets/edit_item_container.dart';
import 'package:spryntr/Screens/Settings/widgets/selected_listtile.dart';

import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/controller/screen_controller.dart';
import 'package:spryntr/data/data.dart';
import 'package:spryntr/enum/settingscreen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

ScreenController settingScreenController = Get.find<ScreenController>();

class _SettingScreenState extends State<SettingScreen> {
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
                Row(children: [
                  Container(
                      height: 723.h,
                      width: 275.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kContDesRadius),
                          //border: Border.all(color: CustomColor.klightgrey),
                          boxShadow: boxshadow,
                          color: CustomColor.kwhite),
                      child: Column(
                        children: [
                          SelectionListTile(
                            slider: settingsliderlist[0],
                            ontap: () {
                              settingScreenController.setSettingScreenIndex(
                                  SettingScreens.yourstore.index);
                              setState(() {});
                            },
                            enable:
                                settingScreenController.getSettingScreenIndex ==
                                    SettingScreens.yourstore.index,
                          ),
                          SelectionListTile(
                            slider: settingsliderlist[1],
                            ontap: () {
                              settingScreenController.setSettingScreenIndex(
                                  SettingScreens.productmanagment.index);
                              setState(() {});
                            },
                            enable:
                                settingScreenController.getSettingScreenIndex ==
                                    SettingScreens.productmanagment.index,
                          ),
                          SelectionListTile(
                            slider: settingsliderlist[2],
                            ontap: () {
                              settingScreenController.setSettingScreenIndex(
                                  SettingScreens.security.index);
                              setState(() {});
                            },
                            enable:
                                settingScreenController.getSettingScreenIndex ==
                                    SettingScreens.security.index,
                          ),
                          SelectionListTile(
                            slider: settingsliderlist[3],
                            ontap: () {
                              settingScreenController.setSettingScreenIndex(
                                  SettingScreens.payouts.index);
                              setState(() {});
                            },
                            enable:
                                settingScreenController.getSettingScreenIndex ==
                                    SettingScreens.payouts.index,
                          ),
                          SelectionListTile(
                            slider: settingsliderlist[4],
                            ontap: () {
                              settingScreenController.setSettingScreenIndex(
                                  SettingScreens.aboutus.index);
                              setState(() {});
                            },
                            enable:
                                settingScreenController.getSettingScreenIndex ==
                                    SettingScreens.aboutus.index,
                          ),
                        ],
                      )

                      // ListView.builder(
                      //   shrinkWrap: true,
                      //   padding: const EdgeInsets.all(0),
                      //   itemCount: settingsliderlist.length,
                      //   itemBuilder: (BuildContext context, int index) {
                      //     return
                      //   },
                      // ),
                      ),
                  AddCustomSpace(width: 24.w, height: 0),
                  settingScreenController.getSettingScreenIndex ==
                          SettingScreens.yourstore.index
                      ? const StoreManagment()
                      : settingScreenController.getSettingScreenIndex ==
                              SettingScreens.productmanagment.index
                          ? const ProductManagemnet()
                          : settingScreenController.getSettingScreenIndex ==
                                  SettingScreens.security.index
                              ? const Secuirty()
                              : settingScreenController.getSettingScreenIndex ==
                                      SettingScreens.payouts.index
                                  ? const PayOutSection()
                                  : const AboutSection()
                ])
              ],
            )));
  }
}
