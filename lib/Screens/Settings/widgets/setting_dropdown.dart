import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/data/data.dart';

class SettingDropDown extends StatelessWidget {
  const SettingDropDown(
      {Key? key,
      this.items,
      required this.value,
      this.OnChanged,
      required Null Function(dynamic value) onChanged})
      : super(key: key);

  @override
  final List<DropdownMenuItem<String>>? items;
  final String value;
  final void Function(String?)? OnChanged;

  Widget build(BuildContext context) {
    return DropdownButton(
      focusColor: CustomColor.kblack,
      elevation: 0,
      value: value,
      items: items,
      onChanged: OnChanged,
      iconEnabledColor: CustomColor.kblack,
      isExpanded: true,
      underline: Container(),
    );
  }
}
