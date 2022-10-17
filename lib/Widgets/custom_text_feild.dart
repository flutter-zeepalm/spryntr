import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Screens/responsive_layout.dart';
import 'package:spryntr/data/data.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final TextInputAction textInput;
  final bool showCalenderIcon;
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.textInputType,
      required this.hintText,
      required this.showCalenderIcon,
      required this.textInput})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

bool obsecureText = false;

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 337.w,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      //cursorColor: CustomColor.kblack,
      child: TextField(
        textInputAction: widget.textInput,
        onTap: () {},
        //widget.showCalenderIcon,
        // ? () async {
        //     final DateTime? picked = await showDatePicker(
        //       context: context,
        //       initialDate: DateTime.now(),
        //       firstDate: DateTime(1960),
        //       lastDate: DateTime(DateTime.now().year + 1),
        //       builder: (context, child) {
        //         return Theme(
        //             data: ThemeData.light().copyWith(
        //               colorScheme: ColorScheme.light(
        //                 primary: CustomColor.korangecolor,
        //                 onPrimary: Colors.white,
        //                 surface: CustomColor.korangecolor,
        //                 onSurface: CustomColor.korangecolor,
        //               ),
        //               dialogBackgroundColor: CustomColor.kbodywhitecolor,
        //             ),
        //             child: child!);
        //       },
        //     );
        //     if (picked != null) {
        //       setState(() {
        //         widget.controller.text =
        //             DateFormat('dd-MMM-yyyy').format(picked).toString();
        //       });
        //     }
        //   }
        // : () {},
        controller: widget.controller,
        keyboardType: widget.textInputType,
        style: CustomTextStyle.ktextTextStyle,
        obscureText: obsecureText,
        readOnly: widget.showCalenderIcon,
        decoration: InputDecoration(
            // border: InputBorder.none,
            suffixIcon: widget.showCalenderIcon
                ? const Icon(Icons.calendar_month)
                : const SizedBox(),
            // ? Padding(
            //     padding: EdgeInsets.all(12.sp),
            //     child: InkWell(
            //       onTap: () async {
            //         final DateTime? picked = await showDatePicker(
            //           context: context,
            //           initialDate: DateTime.now(),
            //           firstDate: DateTime(1960),
            //           lastDate: DateTime(DateTime.now().year + 1),
            //           builder: (context, child) {
            //             return Theme(
            //                 data: ThemeData.light().copyWith(
            //                   colorScheme: ColorScheme.light(
            //                     primary: CustomColor.korangecolor,
            //                     onPrimary: Colors.white,
            //                     surface: CustomColor.korangecolor,
            //                     onSurface: CustomColor.korangecolor,
            //                   ),
            //                   dialogBackgroundColor:
            //                       CustomColor.kbodywhitecolor,
            //                 ),
            //                 child: child!);
            //           },
            //         );
            //         if (picked != null) {
            //           setState(() {
            //             widget.controller.text = DateFormat('dd-MMM-yyyy')
            //                 .format(picked)
            //                 .toString();
            //           });
            //         }
            //       },
            //       child: Icon(Icons.calendar_month),
            //     ),
            //   )
            // : SizedBox(),
            hintText: widget.hintText,
            hintStyle: CustomTextStyle.ksmallTextStyle
                .copyWith(color: CustomColor.kblack),
            fillColor: CustomColor.kwhite,
            filled: true,
            contentPadding: EdgeInsets.only(
              left: 20.w,
              top: 10.h,
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: CustomColor.kblack),
                borderRadius: BorderRadius.circular(3)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: CustomColor.kblack),
                borderRadius: BorderRadius.circular(3)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: CustomColor.kblack),
                borderRadius: BorderRadius.circular(3)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: CustomColor.kblack),
                borderRadius: BorderRadius.circular(3))),
      ),
    );
  }
}
