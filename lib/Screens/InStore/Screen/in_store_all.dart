// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:spryntr/Screens/InStore/Screen/in_bound_section.dart';
import 'package:spryntr/Screens/InStore/Widgets/custom_drawer.dart';
import 'package:spryntr/Screens/InStore/Widgets/item_section.dart';
import 'package:spryntr/Screens/Orders/Screens/order_section.dart';
import 'package:spryntr/Screens/Settings/screens/setting_screen.dart';
import 'package:spryntr/Screens/Summary/Screens/summary.dart';

class InStore extends StatefulWidget {
  const InStore({Key? key}) : super(key: key);

  @override
  State<InStore> createState() => _InStoreState();
}

class _InStoreState extends State<InStore> {
  bool selected = false;

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Row(
          children: [
            //Summary()
            //ItemDetail(),
            //const OrderScreen(),
            //InBoundSection(),
            //CashPayment()
            //  const PrizeSection(),
            //const SettingScreen(),
          ],
        ),
      ),
    );
  }
}
