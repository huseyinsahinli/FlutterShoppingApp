import 'package:flutter/material.dart';
import '../constant/app_constant.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cDividerColor,
      height: 1.0,
    );
  }
}
