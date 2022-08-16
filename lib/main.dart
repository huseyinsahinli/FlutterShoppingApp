import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
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
        AppConstant.EN_LOCALE,
        AppConstant.TR_LOCALE,
      ],
      saveLocale: true,
      fallbackLocale: AppConstant.EN_LOCALE,
      path: AppConstant.LANG_PATH,
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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Nectar UI',
      theme: MyThemes.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
