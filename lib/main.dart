import 'package:flutter/material.dart';
import 'package:nectar_ui/view/home/home_page/home_page.dart';
import 'package:nectar_ui/view/home/onboarding_page/view/onboard_view.dart';

import 'core/constant/app_constant.dart';

void main() => runApp(MyApp());

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
      theme: ThemeData(
        fontFamily: "Gilroy",
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w900,
              fontSize: 14.0),
          unselectedLabelStyle: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w900,
              fontSize: 13.0),
          unselectedItemColor: cTextColor,
          showUnselectedLabels: true,
        ),
      ),
      title: 'Nectar UI',
      home: OnBoardView(),
    );
  }
}
