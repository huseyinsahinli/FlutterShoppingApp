// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import 'package:nectar_ui/core/providers/cart_provider.dart';
import 'package:nectar_ui/core/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'core/constant/app_constant.dart';
import 'core/theme/themes.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        AppConstant.enLocale,
        AppConstant.trLocale,
      ],
      saveLocale: true,
      fallbackLocale: AppConstant.enLocale,
      path: AppConstant.langPath,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()..initialize()),
      ],
      child: Builder(builder: (BuildContext context) {
        return Consumer<ThemeProvider>(builder: (context, provider, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Nectar',
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            themeMode: provider.themeMode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        });
      }),
    );
  }
}
