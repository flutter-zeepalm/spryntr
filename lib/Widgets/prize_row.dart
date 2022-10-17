import 'package:flutter/material.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/data.dart';

class PrizeRow extends StatelessWidget {
  final String title;
  final String prize;
  const PrizeRow({
    Key? key,
    required this.title,
    required this.prize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
            text: title,
            textStyle: CustomTextStyle.kverysmallTextStyle,
            color: CustomColor.klightgrey,
            fontWeight: CustomFontWeight.kRegularWeight),
        const Spacer(),
        CustomText(
            text: prize,
            textStyle: CustomTextStyle.ktextTextStyle,
            color: CustomColor.kblack,
            fontWeight: CustomFontWeight.kRegularWeight),
      ],
    );
  }
}
