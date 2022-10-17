// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:spryntr/Model/accountitemmodel.dart';
import 'package:spryntr/Screens/Settings/screens/save_discard.dart';
import 'package:spryntr/Screens/Settings/widgets/accounts_items.dart';
import 'package:spryntr/Screens/Settings/widgets/upload_container.dart';
import 'package:spryntr/Screens/Settings/widgets/usertextfeild.dart';
import 'package:spryntr/Widgets/add_space.dart';
import 'package:spryntr/Widgets/custom_text_feild.dart';
import 'package:spryntr/Widgets/custom_textfeild.dart';
import 'package:spryntr/Widgets/text_widgets.dart';
import 'package:spryntr/data/constants.dart';
import 'package:spryntr/data/data.dart';
import 'package:spryntr/data/typography.dart';

class AddUser extends StatelessWidget {
  const AddUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 724.h,
              width: 786.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kContDesRadius),
                  //border: Border.all(color: CustomColor.klightgrey),
                  boxShadow: boxshadow,
                  color: CustomColor.kwhite),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 27.w,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 24.h,
                              bottom: 36.h,
                            ),
                            child: CustomText(
                                text: "Add New User",
                                textStyle: CustomTextStyle.kmedTextStyle,
                                color: CustomColor.kblack,
                                fontWeight:
                                    CustomFontWeight.kSemiBoldFontWeight),
                          ),
                          AddCustomSpace(width: 0, height: 16.h),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  UploadContainer(
                                    onTap: () {},
                                  ),
                                  AddCustomSpace(width: 0, height: 16.h),
                                  RichText(
                                    text: TextSpan(
                                      text: "Cashier Code :",
                                      style: CustomTextStyle.ksearchTextStyle
                                          .copyWith(
                                        color: CustomColor.kblack,
                                        fontWeight: CustomFontWeight
                                            .kSemiBoldFontWeight,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: ' AS123240',
                                          style: CustomTextStyle
                                              .ksearchTextStyle
                                              .copyWith(
                                            color: CustomColor.kblack,
                                            fontWeight:
                                                CustomFontWeight.kRegularWeight,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              AddCustomSpace(width: 25.w, height: 0),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TextFeildContainer(text: "User Name"),
                                  UserTextfeild(
                                      controller: emailController,
                                      textInputType: TextInputType.multiline,
                                      hintText: "",
                                      showCalenderIcon: false,
                                      textInput: TextInputAction.next),
                                  AddCustomSpace(width: 0, height: 17.h),
                                  const TextFeildContainer(text: "User Email"),
                                  UserTextfeild(
                                      controller: emailController,
                                      textInputType: TextInputType.multiline,
                                      hintText: "spryntr@mail.com",
                                      showCalenderIcon: false,
                                      textInput: TextInputAction.next),
                                  AddCustomSpace(width: 0, height: 17.h),
                                  const TextFeildContainer(text: "User Phone"),
                                  UserTextfeild(
                                      controller: emailController,
                                      textInputType: TextInputType.multiline,
                                      hintText: "",
                                      showCalenderIcon: false,
                                      textInput: TextInputAction.next),
                                  AddCustomSpace(width: 0, height: 70.h),
                                ],
                              )
                            ],
                          ),
                          AddCustomSpace(width: 0, height: 100.h),
                          SaveAndDiscardChanges(
                            saveontap: () {},
                            discardontap: () {},
                          )
                        ],
                      )
                    ]),
              )),
        ],
      ),
    );
  }
}
