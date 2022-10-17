// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LayoutBuilderScreen extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  const LayoutBuilderScreen({
    Key? key,
    required this.desktop,
    required this.mobile,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return desktop;
        } else {
          return mobile;
        }
      },
    );
  }
}
