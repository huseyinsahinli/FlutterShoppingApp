import 'package:flutter/material.dart';

abstract class IColorTheme {
  AppColors get colors;
  Color? backgroundColor;
  Color? bottombarNormalColor;
  Color? bottombarSelectedColor;
  Color? shadowColor;
  Brightness? brightness;
  ColorScheme? colorScheme;
}

class AppColors {
  final black = const Color(0xff000000);
  final green = const Color(0xff53B175);
  final opacblack = Color.fromARGB(153, 22, 22, 22);
  final darkblue = const Color(0xff181725);
  final darkgrey = const Color(0xff232323);
  final orange = const Color.fromARGB(255, 231, 74, 12);
  final white = const Color(0xffffffff);
  final grey = const Color(0xff7C7C7C);
  final darkgreen = const Color.fromARGB(255, 64, 138, 91);
}
