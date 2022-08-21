import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_icon.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/view/account_page/components/bottom_sheets/language_sheet.dart';
import 'package:nectar_ui/view/account_page/components/bottom_sheets/logout_sheet.dart';
import 'package:nectar_ui/view/account_page/components/top_sheets/help_page.dart';

import '../../view/account_page/components/bottom_sheets/theme_sheet.dart';
import '../../view/account_page/components/top_sheets/about_page.dart';
import '../../view/account_page/components/top_sheets/address_page.dart';

class AccountModel {
  final String title;
  final Icon leading;
  final Widget? widget;
  bool? bottomSheet;
  AccountModel(this.title, this.leading, [this.widget, this.bottomSheet]);
}

class AccountModels {
  static final List<AccountModel> accountCards = [
    AccountModel(LocaleKeys.account_orders.locale, AppIcons.accountOrders),
    AccountModel(LocaleKeys.account_myDetails.locale, AppIcons.accountDetails),
    AccountModel(LocaleKeys.account_deliveryAddres.locale,
        AppIcons.accountAddress, const AddressPage()),
    AccountModel(LocaleKeys.account_myCart.locale, AppIcons.accountCart),
    AccountModel(
      LocaleKeys.account_theme_title.locale,
      AppIcons.accountTheme,
      const ThemeSheet(),
      true,
    ),
    AccountModel(LocaleKeys.account_language.locale, AppIcons.accountLanguage,
        const LanguageSheet(), true),
    AccountModel(
        LocaleKeys.account_help.locale, AppIcons.accountHelp, const HelpPage()),
    AccountModel(LocaleKeys.account_about.locale, AppIcons.accountAbout,
        const AboutPage()),
    AccountModel(
      LocaleKeys.account_logout.locale,
      AppIcons.accountLogout,
      const LogoutSheet(),
      true,
    ),
  ];
}
