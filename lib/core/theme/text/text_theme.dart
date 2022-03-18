import 'package:flutter/material.dart';

abstract class ITextTheme {
  final Color? primaryColor;

  TextStyle? headline1;
  TextStyle? headline2;
  TextStyle? headline3;
  TextStyle? headline4;
  TextStyle? headline5;
  TextStyle? headline6;
  TextStyle? body1;
  TextStyle? body2;
  TextStyle? bodySmall;
  TextStyle? bodyMedium;
  TextStyle? bodyLarge;

  String? fontFamily;
  TextStyle? titleSmall;
  TextStyle? titleMedium;
  TextStyle? titleLarge;
  ITextTheme(this.primaryColor);
}
