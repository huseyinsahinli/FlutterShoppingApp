import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cart_provider.dart';
import '../../providers/theme_provider.dart';

class DependencyInjector {
  static DependencyInjector? _instance;

  static DependencyInjector get instance {
    _instance ??= DependencyInjector._init();
    return _instance!;
  }

  DependencyInjector._init();

  List<ChangeNotifierProvider<ChangeNotifier>> get providers => [
        ChangeNotifierProvider<CartProvider>(
            create: (context) => CartProvider()),
        ChangeNotifierProvider<ThemeProvider>(
            create: (_) => ThemeProvider()..initialize()),
      ];
}
