import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/data/data.dart';
import 'package:spryntr/data/typography.dart';

class DropDown extends StatefulWidget {
  //final String dropdownvalue;
  //final List<String> =[];

  const DropDown({
    Key? key,
  }) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'Today';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 10.w,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Icon(
            Icons.arrow_drop_down_sharp,
            size: 25,
            color: CustomColor.kblack,
          ),
          value: dropdownValue,
          isExpanded: true,
          style: CustomTextStyle.ksearchTextStyle.copyWith(
              color: CustomColor.kblack,
              fontWeight: CustomFontWeight.kMediumFontWeight),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            'Today',
            'Tomorrow',
            'Yesterday',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
