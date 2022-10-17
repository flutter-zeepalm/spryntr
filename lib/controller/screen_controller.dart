import 'package:get/get.dart';
import 'package:spryntr/enum/screens.dart';

import '../enum/settingscreen.dart';

class ScreenController extends GetxController {
  RxInt screenNumber = Screens.inOrderScreen.index.obs;
  int get getScreenIndex => screenNumber.value;

  void setScreenIndex(int index) {
    screenNumber.value = index;
  }

  RxInt settingScreenNumber = SettingScreens.yourstore.index.obs;
  int get getSettingScreenIndex => settingScreenNumber.value;

  void setSettingScreenIndex(int index) {
    settingScreenNumber.value = index;
  }
}
