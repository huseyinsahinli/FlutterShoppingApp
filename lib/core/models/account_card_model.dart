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
    AccountModel(Strings.orders, Icon(Icons.shop_outlined)),
    AccountModel(Strings.myDetails, Icon(Icons.badge_outlined)),
    AccountModel(Strings.deliveryAddress, Icon(Icons.location_on_outlined)),
    AccountModel(Strings.myCart, Icon(Icons.credit_card_outlined)),
    AccountModel(Strings.promoCard, Icon(Icons.discount_outlined)),
    AccountModel(
        Strings.notifecations, Icon(Icons.notifications_none_outlined)),
    AccountModel(Strings.theme, Icon(Icons.brightness_4_outlined)),
    AccountModel(Strings.settings, Icon(Icons.settings_outlined)),
    AccountModel(Strings.help, Icon(Icons.help_outline)),
    AccountModel(Strings.about, Icon(Icons.info_outline)),
    AccountModel(Strings.logout, Icon(Icons.logout))
  ];
}
