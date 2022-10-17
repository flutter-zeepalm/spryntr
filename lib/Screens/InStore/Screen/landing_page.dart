import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:spryntr/Screens/InStore/Screen/cash_payment_section.dart';
import 'package:spryntr/Screens/InStore/Screen/in_bound_section.dart';
import 'package:spryntr/Screens/InStore/Widgets/Prize_detail_section.dart';
import 'package:spryntr/Screens/InStore/Widgets/custom_drawer.dart';
import 'package:spryntr/Screens/InStore/Widgets/item_section.dart';
import 'package:spryntr/Screens/Orders/Screens/order_section.dart';
import 'package:spryntr/Screens/Settings/screens/setting_screen.dart';
import 'package:spryntr/Screens/Summary/Screens/summary.dart';
import 'package:spryntr/Screens/responsive_layout.dart';
import 'package:spryntr/controller/screen_controller.dart';
import 'package:spryntr/enum/screens.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return GetX<ScreenController>(
        init: ScreenController(),
        builder: (screenController) {
          return LayoutBuilderScreen(
              desktop: Scaffold(
                endDrawer: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [const PrizeSection(), const CashPayment()],
                  ),
                ),
                body: SingleChildScrollView(
                  child: Row(children: [
                    const Expanded(
                      flex: 20,
                      child: CustomDrawer(),
                    ),
                    Expanded(
                        flex: 80,
                        child: screenController.getScreenIndex ==
                                Screens.inOrderScreen.index
                            ? const InBoundSection()
                            : screenController.getScreenIndex ==
                                    Screens.ordersScreen.index
                                ? const OrderScreen()
                                : screenController.getScreenIndex ==
                                        Screens.summaryScreen.index
                                    ? const Summary()
                                    : const SettingScreen()),
                  ]),
                ),
              ),
              mobile: Scaffold(
                drawer: CustomDrawer(),
                endDrawer: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [const PrizeSection(), const CashPayment()],
                  ),
                ),
                body: SingleChildScrollView(
                  child: Expanded(
                      child: screenController.getScreenIndex ==
                              Screens.inOrderScreen.index
                          ? const InBoundSection()
                          : screenController.getScreenIndex ==
                                  Screens.ordersScreen.index
                              ? const OrderScreen()
                              : screenController.getScreenIndex ==
                                      Screens.summaryScreen.index
                                  ? const Summary()
                                  : const SettingScreen()),
                ),
              ));
        });
  }
}
