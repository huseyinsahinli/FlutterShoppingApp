import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:nectar_ui/core/constant/app_border_radius.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: Row(
            children: [
              Text(
                LocaleKeys.account_language_english.locale,
                style: Theme.of(context).textTheme.headline2,
              ),
              Padding(
                padding: const AppPadding.onlyLeft() / 2,
                child: ClipRRect(
                  borderRadius: AppBorderRadius.circular5 / 2,
                  child: Image.asset(
                    'assets/images/png/english.png',
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
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
          title: Row(children: [
            Text(
              LocaleKeys.account_language_turkish.locale,
              style: Theme.of(context).textTheme.headline2,
            ),
            Padding(
              padding: const AppPadding.onlyLeft() / 2,
              child: ClipRRect(
                borderRadius: AppBorderRadius.circular5 / 2,
                child: Image.asset(
                  'assets/images/png/turkish.png',
                  width: 40,
                ),
              ),
            ),
          ]),
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
