import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_strings.dart';

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
    AccountModel(Strings.orders, const Icon(Icons.shop_outlined)),
    AccountModel(Strings.myDetails, const Icon(Icons.badge_outlined)),
    AccountModel(
        Strings.deliveryAddress, const Icon(Icons.location_on_outlined)),
    AccountModel(Strings.myCart, const Icon(Icons.credit_card_outlined)),
    AccountModel(Strings.promoCard, const Icon(Icons.discount_outlined)),
    AccountModel(
        Strings.notifecations, const Icon(Icons.notifications_none_outlined)),
    AccountModel(Strings.theme, const Icon(Icons.brightness_4_outlined)),
    AccountModel(Strings.settings, const Icon(Icons.settings_outlined)),
    AccountModel(Strings.help, const Icon(Icons.help_outline)),
    AccountModel(Strings.about, const Icon(Icons.info_outline)),
    AccountModel(Strings.logout, const Icon(Icons.logout))
  ];
}
