import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';

enum ImageEnums { google, order, delivery, chef }

extension ImageEnumExtension on ImageEnums {
  String get toPathSvg => 'assets/images/svg/$name.svg';
  String get toPathPng => 'assets/images/png/$name.png';

  Image get toImagePng => Image.asset(toPathPng);
  Image get toImagePngActive => Image.asset(
        toPathPng,
        color: cMainColor,
      );
  SvgPicture get toImageSvg => SvgPicture.asset(toPathSvg);
  SvgPicture get toImageSvgActive => SvgPicture.asset(
        toPathSvg,
        color: cMainColor,
      );
}
