import 'package:flutter/material.dart';
import 'package:nectar_ui/core/theme/color/color_theme.dart';

class LightColor implements IColorTheme {
  @override
  late final Color? backgroundColor;

  @override
  late final Brightness? brightness;

  @override
  late final ColorScheme? colorScheme;

  @override
  final AppColors colors = AppColors();
  @override
  Color? bottombarNormalColor;

  @override
  Color? bottombarSelectedColor;
  @override
  Color? shadowColor;
  LightColor() {
    shadowColor = colors.grey;
    backgroundColor = colors.white;
    bottombarNormalColor = colors.black;
    bottombarSelectedColor = colors.green;
    brightness = Brightness.light;
    colorScheme = const ColorScheme.dark().copyWith(
      onPrimary: colors.darkgrey,
      onSurface: colors.green,
    );
  }
}
