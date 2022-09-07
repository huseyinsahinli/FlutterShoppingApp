import 'package:flutter/material.dart';

class AppBorderRadius {
  static BorderRadiusGeometry circular5 = BorderRadius.circular(5);
  static BorderRadiusGeometry circular10 = BorderRadius.circular(10);
  static BorderRadiusGeometry circular20 = BorderRadius.circular(20);

  static BorderRadiusGeometry circular30 = BorderRadius.circular(30);

  static const BorderRadiusGeometry topLeftRight20 = BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );
}
