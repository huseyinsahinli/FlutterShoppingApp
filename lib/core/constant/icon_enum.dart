import 'package:flutter_svg/flutter_svg.dart';

import 'app_constant.dart';

enum IconEnums {
  about,
  address,
  backarrow,
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
  location,
  logo,
  logout,
  remove,
  order,
  pencil,
  plus,
  store,
  ticket,
  user,
}

extension ImageEnumsExtension on IconEnums {
  String get toPath => 'assets/images/svg/ic_$name.svg';

  SvgPicture get toImage => SvgPicture.asset(toPath);
  SvgPicture get toImageActive => SvgPicture.asset(
        toPath,
        color: cMainColor,
      );
}
