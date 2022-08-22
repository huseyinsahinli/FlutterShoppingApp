import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../../core/helper/text_scale_size.dart';
import '../../../../core/init/lang/locale_keys.g.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const AppPadding.all(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  LocaleKeys.splash_title.locale.toUpperCase(),
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        color: Colors.green,
                      ),
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                  textAlign: TextAlign.center,
                ),
                Text(
                  LocaleKeys.account_about_description.locale,
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
                Text(
                  LocaleKeys.account_about_info.locale,
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
              ],
            ),
            Text(
              '${LocaleKeys.account_about_contact.locale}\nhuseyinsahinli01@gmail.com',
              style: Theme.of(context).textTheme.headline3,
              textScaleFactor: ScaleSize.textScaleFactor(context),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
