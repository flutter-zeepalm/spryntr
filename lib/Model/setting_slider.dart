// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:spryntr/data/assets_path.dart';

class SettingSlider {
  bool enable;
  String title;
  String subtitle;
  String imagepath;
  VoidCallback onPressed;
  SettingSlider({
    required this.enable,
    required this.title,
    required this.subtitle,
    required this.imagepath,
    required this.onPressed,
  });
}

List<SettingSlider> settingsliderlist = [
  yourStore,
  productManagment,
  security,
  payouts,
  aboutUs
];

SettingSlider yourStore = SettingSlider(
    enable: false,
    title: 'Your Store',
    subtitle: 'Add Cashiers, Remove Cashiers',
    onPressed: () {},
    imagepath: CustomAssets.yourstore);
SettingSlider productManagment = SettingSlider(
    enable: false,
    title: 'Products Management',
    subtitle: 'Manage your product, pricing, etc',
    onPressed: () {},
    imagepath: CustomAssets.productmanagment);
SettingSlider security = SettingSlider(
    enable: false,
    title: 'Security',
    subtitle: 'Configure Password, PIN, etc',
    onPressed: () {},
    imagepath: CustomAssets.security);
SettingSlider payouts = SettingSlider(
    enable: false,
    title: 'Payouts',
    subtitle: 'Account Name, Number',
    onPressed: () {},
    imagepath: CustomAssets.payouts);
SettingSlider aboutUs = SettingSlider(
    enable: false,
    title: 'About Us',
    subtitle: 'Find out more about Spryntr',
    onPressed: () {},
    imagepath: CustomAssets.aboutus);
