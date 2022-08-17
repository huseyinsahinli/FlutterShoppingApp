import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_constant.dart';

enum IconEnums {
  about,
  address,
  bell,
  cart,
  credit,
  close,
  delete,
  details,
  explore,
  favourite,
  filter,
  help,
  leftarrow,
  location,
  logo,
  logout,
  remove,
  rightarrow,
  order,
  pencil,
  plus,
  store,
  ticket,
  user,
  whiteLogo,
  loginPage
}

extension IconEnumsExtension on IconEnums {
  String get toPathSvg => 'assets/images/svg/ic_$name.svg';
  String get toPathPng => 'assets/images/png/ic_$name.png';

  SvgPicture get toImage => SvgPicture.asset(toPathSvg);
  SvgPicture get toImageActive => SvgPicture.asset(
        toPathSvg,
        color: cMainColor,
      );
}
