import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/typography.dart';

class DropDownCustom extends StatelessWidget {
  const DropDownCustom(
      {Key? key,
      this.items,
      required this.value,
      this.OnChanged,
      required this.hint,
      required this.hintenable})
      : super(key: key);

  @override
  final List<DropdownMenuItem<String>>? items;
  final String value;
  final void Function(String?)? OnChanged;
  final bool hintenable;
  final String hint;

  Widget build(BuildContext context) {
    return DropdownButton(
      focusColor: CustomColor.kblack,
      value: value,
      items: items,
      onChanged: OnChanged,
      iconEnabledColor: CustomColor.kblack,
      isExpanded: true,
      underline: Container(),
      hint: Text(
        hint,
        style: CustomTextStyle.ktextTextStyle.copyWith(
            color: CustomColor.klightgrey,
            fontWeight: CustomFontWeight.kRegularWeight),
      ),
      disabledHint: Text("select"),
    );
  }
}
