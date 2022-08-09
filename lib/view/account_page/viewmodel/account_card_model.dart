import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_strings.dart';

import '../../home_page/home_page.dart';
import '../card_pages/theme_page/theme_page.dart';

class AccountModel {
  final String title;
  final Icon leading;
  final page;
  final bool? bottomSheetBool;
  AccountModel(this.title, this.leading, this.page, [this.bottomSheetBool]);
}

Icon _accountIcon(IconData iconData) {
  return Icon(iconData);
}

class AccountModels {
  static final List<AccountModel> accountCards = [
    AccountModel(Strings.orders, _accountIcon(Icons.shop_outlined), HomePage()),
    AccountModel(
        Strings.myDetails, _accountIcon(Icons.badge_outlined), HomePage()),
    AccountModel(Strings.deliveryAddress,
        _accountIcon(Icons.location_on_outlined), HomePage()),
    AccountModel(
        Strings.myCart, _accountIcon(Icons.credit_card_outlined), HomePage()),
    AccountModel(
        Strings.promoCard, _accountIcon(Icons.discount_outlined), HomePage()),
    AccountModel(Strings.notifecations,
        _accountIcon(Icons.notifications_none_outlined), HomePage()),
    AccountModel(Strings.theme, _accountIcon(Icons.brightness_4_outlined),
        ThemePage(tittle: Strings.theme), true),
    AccountModel(
        Strings.settings, _accountIcon(Icons.settings_outlined), HomePage()),
    AccountModel(Strings.help, _accountIcon(Icons.help_outline), HomePage()),
    AccountModel(Strings.about, _accountIcon(Icons.info_outline), HomePage()),
  ];
  static List<Widget> get toPageList {
    List<Widget> page = [];

    for (var i = 0; i < AccountModels.accountCards.length; i++) {
      page.add(AccountModels.accountCards[i].page);
    }
    return page;
  }
}
