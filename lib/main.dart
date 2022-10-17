import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spryntr/Screens/InStore/Screen/landing_page.dart';
import 'package:spryntr/Screens/LoginScreens/login_screen.dart';
import 'package:spryntr/Screens/responsive_layout.dart';
import 'package:spryntr/data/data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1500, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          defaultTransition: Transition.rightToLeft,
          debugShowCheckedModeBanner: false,
          title: 'Kaana Rider',
          theme: primaryTheme,
          home: child,
        );
      },
      child: LoginScreen(),
    );
  }
}
