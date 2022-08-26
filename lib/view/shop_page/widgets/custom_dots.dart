import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/app_constant.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({
    Key? key,
    required this.data,
    required int currentIndex,
  })  : _currentIndex = currentIndex,
        super(key: key);

  final QuerySnapshot<Object?> data;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: data.size,
      position: _currentIndex.toDouble(),
      decorator: DotsDecorator(
        activeColor: cMainColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
