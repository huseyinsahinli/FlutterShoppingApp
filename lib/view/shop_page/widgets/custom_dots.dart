import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_border_radius.dart';

import '../../../core/constant/app_constant.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({
    Key? key,
    required this.dataSize,
    required int currentIndex,
  })  : _currentIndex = currentIndex,
        super(key: key);

  final int dataSize;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: dataSize,
      position: _currentIndex,
      decorator: DotsDecorator(
        activeColor: cMainColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: AppBorderRadius.circular5,
        ),
      ),
    );
  }
}
