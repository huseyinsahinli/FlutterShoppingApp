import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/icon_enum.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';

import '../../../core/constant/app_constant.dart';
import '../../core/extensions/double_extensions.dart';
import '../../core/helper/text_scale_size.dart';
import '../../core/init/lang/locale_keys.g.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      FirebaseAuth.instance.idTokenChanges().listen((User? user) {
        if (user == null) {
          context.router.replace(const OnBoardRoute());
        } else {
          setState(() {});
          context.router.replace(const HomeRoute());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconEnums.whiteLogo.toImage,
              15.0.sizedBoxOnlyWidth,
              Column(
                children: [
                  Text(
                    LocaleKeys.splash_title.locale,
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: cWhiteColor,
                          fontSize: 64,
                        ),
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  Text(
                    LocaleKeys.splash_subtitle.locale,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: cWhiteColor, letterSpacing: 3.75),
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomSheet: const LinearProgressIndicator(
        backgroundColor: cMainColor,
        color: cWhiteColor,
      ),
    );
  }
}
