import 'dart:async';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: const Text('English'),
          trailing: Switch(
            value: context.locale == AppConstant.enLocale,
            onChanged: (value) async {
              if (value) {
                context.setLocale(AppConstant.enLocale);

                context.replaceRoute(SplashRoute());
              }
            },
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Turkish'),
          trailing: Switch(
            value: context.locale == AppConstant.trLocale,
            onChanged: (value) {
              if (value) {
                context.setLocale(AppConstant.trLocale);
                context.replaceRoute(SplashRoute());
              }
            },
          ),
        ),
      ],
    );
  }
}
