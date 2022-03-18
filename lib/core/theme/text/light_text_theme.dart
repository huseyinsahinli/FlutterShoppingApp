import 'package:flutter/material.dart';
import 'package:nectar_ui/core/theme/text/text_theme.dart';

class LightTextTeheme implements ITextTheme {
  @override
  TextStyle? body1;

  @override
  String? fontFamily;

  @override
  TextStyle? headline6;
  @override
  Color? primaryColor;
  @override
  TextStyle? titleLarge;
  @override
  TextStyle? headline1;

  LightTextTeheme(this.primaryColor) {
    body1 = const TextStyle(fontSize: 16);
    headline1 = const TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
    headline2 = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
    headline3 = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
    fontFamily = "Gilroy";
  }

  @override
  TextStyle? body2;

  @override
  TextStyle? bodyLarge;

  @override
  TextStyle? bodyMedium;

  @override
  TextStyle? bodySmall;

  @override
  TextStyle? headline2;

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? titleMedium;

  @override
  TextStyle? titleSmall;
}
