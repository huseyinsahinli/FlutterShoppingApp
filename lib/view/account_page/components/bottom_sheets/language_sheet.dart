import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: Text(LocaleKeys.account_language_english.locale),
          trailing: Switch(
            value: context.locale == AppConstant.enLocale,
            onChanged: (value) async {
              context.setLocale(
                value ? AppConstant.enLocale : AppConstant.trLocale,
              );
            },
          ),
        ),
        const Divider(),
        ListTile(
          title: Text(LocaleKeys.account_language_turkish.locale),
          trailing: Switch(
            value: context.locale == AppConstant.trLocale,
            onChanged: (value) {
              context.setLocale(
                value ? AppConstant.trLocale : AppConstant.enLocale,
              );
            },
          ),
        ),
      ],
    );
  }
}
