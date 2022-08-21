import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';

class ThemeSheet extends StatelessWidget {
  const ThemeSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: Text(LocaleKeys.account_theme_light.locale),
          trailing: Switch(
            value: true,
            onChanged: (value) {
              if (value) {
              } else {}
            },
          ),
        ),
        const Divider(),
        ListTile(
          title: Text(LocaleKeys.account_theme_dark.locale),
          trailing: Switch(
            value: false,
            onChanged: (value) {
              if (value) {
              } else {}
            },
          ),
        ),
      ],
    );
  }
}
