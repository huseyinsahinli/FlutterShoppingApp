import 'package:flutter/material.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/core/widgets/divider.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/theme_provider.dart';

class ThemeSheet extends StatelessWidget {
  const ThemeSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Align(
        alignment: Alignment.topCenter,
        child: Consumer<ThemeProvider>(builder: (context, provider, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const AppPadding.onlyRight(),
                child: Text(
                  "Select Theme ",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              DropdownButton<String>(
                underline: const CustomDivider(),
                alignment: Alignment.center,
                value: provider.currentThemeString,
                onChanged: (String? value) {
                  provider.changeTheme(value ?? "system");
                },
                items: [
                  DropdownMenuItem(
                    value: 'system',
                    child: Text(
                      "System",
                      style: Theme.of(context).textTheme.headline2,
                    ), //LocaleKeys.system.tr()),
                  ),
                  DropdownMenuItem(
                    value: 'light',
                    child: Text(
                      "Light",
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.center,
                    ), //LocaleKeys.light.tr()),
                  ),
                  DropdownMenuItem(
                    value: 'dark',
                    child: Text(
                      "Dark",
                      style: Theme.of(context).textTheme.headline2,
                    ), //LocaleKeys.dark.tr()),
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
