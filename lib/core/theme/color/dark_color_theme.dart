import 'package:flutter/material.dart';
import 'package:nectar_ui/core/theme/color/color_theme.dart';

class DarkColor implements IColorTheme {
  @override
  late final Color? backgroundColor;

  @override
  late final Brightness? brightness;

  @override
  late final ColorScheme? colorScheme;

  @override
  final AppColors colors = AppColors();
  @override
  late final Color? bottombarNormalColor;

  @override
  late final Color? bottombarSelectedColor;
  @override
  late final Color? shadowColor;
  DarkColor() {
    backgroundColor = colors.darkgrey;
    bottombarNormalColor = colors.white;
    bottombarSelectedColor = colors.green;
    brightness = Brightness.light;
    shadowColor = colors.opacblack;

    colorScheme = const ColorScheme.dark().copyWith(
      onPrimary: colors.white,
      primary: colors.white,
      onSurface: colors.orange,
    );
  }
}
