import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';

class CustomSnackBar {
  static SnackBar errorSnackBar = SnackBar(
      backgroundColor: Colors.red,
      content: Text(LocaleKeys.cart_productCart_allreadyInCart.locale),
      duration: const Duration(seconds: 1));
  static SnackBar successSnackBar = SnackBar(
      backgroundColor: Colors.green,
      content: Text(LocaleKeys.cart_productCart_addedToCart.locale),
      duration: const Duration(seconds: 1));
}
