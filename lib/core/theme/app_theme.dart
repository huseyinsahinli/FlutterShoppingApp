import 'package:flutter/material.dart';
import 'package:nectar_ui/core/theme/color/color_theme.dart';
import 'package:nectar_ui/core/theme/color/dark_color_theme.dart';
import 'package:nectar_ui/core/theme/color/light_theme.dart';
import 'package:nectar_ui/core/theme/text/dark_text_theme.dart';
import 'package:nectar_ui/core/theme/text/light_text_theme.dart';
import 'package:nectar_ui/core/theme/text/text_theme.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColorTheme get colorTheme;
}

class AppThemeLight extends ITheme {
  @override
  IColorTheme get colorTheme => LightColor();

  @override
  ITextTheme get textTheme => LightTextTeheme(colorTheme.colors.grey);
}

class AppThemeDark extends ITheme {
  @override
  IColorTheme get colorTheme => DarkColor();

  @override
  ITextTheme get textTheme => DarkTextTeheme(colorTheme.colors.white);
}

abstract class ThemeManager {
  static ThemeData createTheme(ITheme theme) {
    return ThemeData(
        appBarTheme: AppBarTheme(color: theme.colorTheme.backgroundColor),
        shadowColor: theme.colorTheme.shadowColor,
        fontFamily: "Gilroy",
        textTheme: TextTheme(
          headline1: theme.textTheme.headline1,
          headline3: theme.textTheme.headline3,
          bodyText1: theme.textTheme.body1,
          bodyText2: theme.textTheme.body2,
        ).apply(
            decorationColor: theme.textTheme.primaryColor,
            bodyColor: theme.textTheme.primaryColor,
            fontFamily: "Gilroy"),
        backgroundColor: theme.colorTheme.backgroundColor,
        iconTheme: IconThemeData(color: theme.colorTheme.bottombarNormalColor),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 12,
          backgroundColor: theme.colorTheme.backgroundColor,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: theme.colorTheme.bottombarSelectedColor,
          ),
          selectedItemColor: theme.colorTheme.bottombarSelectedColor,
          unselectedItemColor: theme.colorTheme.bottombarNormalColor,
          showUnselectedLabels: true,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.w900, fontSize: 14.0),
          unselectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.w900, fontSize: 13.0),
        ));
  }
}
