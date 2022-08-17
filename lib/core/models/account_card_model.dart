import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_icon.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';

class AccountModel {
  final String title;
  final Icon leading;
  AccountModel(
    this.title,
    this.leading,
  );
}

class AccountModels {
  static final List<AccountModel> accountCards = [
    AccountModel(LocaleKeys.account_orders.locale, AppIcons.accountOrders),
    AccountModel(LocaleKeys.account_myDetails.locale, AppIcons.accountDetails),
    AccountModel(
        LocaleKeys.account_deliveryAddres.locale, AppIcons.accountAddress),
    AccountModel(LocaleKeys.account_myCart.locale, AppIcons.accountCart),
    AccountModel(LocaleKeys.account_promoCard.locale, AppIcons.accountPromo),
    AccountModel(
        LocaleKeys.account_notifications.locale, AppIcons.accountNotifications),
    AccountModel(LocaleKeys.account_theme.locale, AppIcons.accountTheme),
    AccountModel(LocaleKeys.account_settings.locale, AppIcons.accountSettings),
    AccountModel(LocaleKeys.account_help.locale, AppIcons.accountHelp),
    AccountModel(LocaleKeys.account_about.locale, AppIcons.accountAbout),
    AccountModel(LocaleKeys.account_logout.locale, AppIcons.accountLogout),
  ];
}
