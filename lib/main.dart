import 'package:flutter/material.dart';
import 'package:nectar_ui/view/home_page/home_page.dart';
import 'package:nectar_ui/view/onboarding_page/view/onboard_view.dart';

import 'core/theme/themes.dart';

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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nectar UI',
      theme: MyThemes.lightTheme,
      home: HomePage(),
    );
  }
}
