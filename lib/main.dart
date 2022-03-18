import 'package:flutter/material.dart';
import 'package:nectar_ui/core/theme/app_theme.dart';
import 'package:nectar_ui/view/home/home_page/home_page.dart';
import 'package:nectar_ui/view/home/onboarding_page/view/onboard_view.dart';
import 'package:nectar_ui/view/home/splash_page/view/splash_view.dart';
import 'package:provider/provider.dart';
import 'core/theme/provider/theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Nectar UI',
            themeMode: themeProvider.themeMode,
            theme: ThemeManager.createTheme(AppThemeLight()),
            darkTheme: ThemeManager.createTheme(AppThemeDark()),
            home: OnBoardPage(),
          );
        },
      );
}
