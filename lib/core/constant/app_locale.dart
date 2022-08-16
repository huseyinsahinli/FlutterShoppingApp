import 'package:easy_localization/easy_localization.dart';

import 'app_constant.dart';

class LocaleKeys {
  static String onBoardPageTitle = 'onBoardPageTitle'.locale;



}

extension LocaleExtension on String {
  String get locale => this.tr().toString();
}
