import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Widgets/add_space.dart';

import 'package:spryntr/Widgets/drawer_listtile.dart';
import 'package:spryntr/controller/screen_controller.dart';

import 'package:spryntr/data/data.dart';
import 'package:spryntr/enum/screens.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

ScreenController screenController = Get.find<ScreenController>();

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedIndex = 0;
  int ourindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1024.h,
      width: 294.w,
      color: CustomColor.kblack,
      child: Column(
        children: [
          AddCustomSpace(width: 0, height: 64.h),
          SvgPicture.asset(
            CustomAssets.synlogo,
            height: 66.03.h,
            width: 218.13.w,
            fit: BoxFit.contain,
          ),
          AddCustomSpace(width: 0, height: 55.94.h),
          DrawerListTile(
            title: 'In-Store',
            enabled:
                screenController.getScreenIndex == Screens.inOrderScreen.index,
            ontap: () {
              screenController.setScreenIndex(Screens.inOrderScreen.index);
              setState(() {});
            },
            notification: 0,
            iconpath: CustomAssets.inStoreicon,
            isNotification: false,
          ),
          DrawerListTile(
            title: 'Orders',
            enabled:
                screenController.getScreenIndex == Screens.ordersScreen.index,
            ontap: () {
              screenController.setScreenIndex(Screens.ordersScreen.index);
              setState(() {});
            },
            notification: 9,
            iconpath: CustomAssets.orders,
            isNotification: true,
          ),
          DrawerListTile(
            title: 'Summary',
            enabled:
                screenController.getScreenIndex == Screens.summaryScreen.index,
            ontap: () {
              screenController.setScreenIndex(Screens.summaryScreen.index);
              setState(() {});
            },
            notification: 0,
            iconpath: CustomAssets.summary,
            isNotification: false,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30.h,
            ),
            child: Divider(
              color: CustomColor.kwhite,
            ),
          ),
          DrawerListTile(
            title: 'Settings',
            enabled:
                screenController.getScreenIndex == Screens.settingsScreen.index,
            ontap: () {
              screenController.setScreenIndex(Screens.settingsScreen.index);
              setState(() {});
            },
            notification: 0,
            iconpath: CustomAssets.settings,
            isNotification: false,
          ),
        ],
      ),
    );
  }
}
