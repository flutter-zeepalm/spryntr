import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/data/data.dart';
import 'package:spryntr/data/typography.dart';

class CustomDropDown<T> extends StatelessWidget {
  final List<T> dropDownList;
  final T? currentItem;
  final String iconPath;
  final String hintText;
  final void Function(T?)? onchanged;
  CustomDropDown(
      {Key? key,
      required this.dropDownList,
      required this.currentItem,
      required this.iconPath,
      required this.hintText,
      required this.onchanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: CustomColor.kdarkblue, width: 1.5),
          borderRadius: BorderRadius.circular(5.r)),
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: InputDecorator(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            filled: true,
            icon: const Icon(Icons.arrow_drop_down),
            //fillColor: kWhite,
            hintText: "Select Unit",
            hintStyle: CustomTextStyle.ksearchTextStyle
                .copyWith(color: CustomColor.kblack),
            contentPadding: EdgeInsets.only(left: 5.w)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<T>(
            isDense: true,
            isExpanded: true,
            menuMaxHeight: 200.h,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: CustomColor.kblack,
            ),
            borderRadius: BorderRadius.circular(10),
            items: dropDownList.map((T value) {
              return DropdownMenuItem<T>(
                value: value,
                child: Text(value.toString()),
              );
            }).toList(),
            disabledHint: Text(
              hintText,
              style: CustomTextStyle.ksearchTextStyle
                  .copyWith(color: CustomColor.kblack),
            ),
            hint: Text(
              hintText,
              style: CustomTextStyle.ksearchTextStyle
                  .copyWith(color: CustomColor.kblack),
            ),
            style: CustomTextStyle.ksearchTextStyle
                .copyWith(color: CustomColor.kblack),
            onChanged: onchanged,
            value: currentItem,
          ),
        ),
      ),
    );
  }
}
