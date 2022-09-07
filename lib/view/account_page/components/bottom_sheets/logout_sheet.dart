import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../../core/extensions/double_extensions.dart';
import '../../../../core/helper/text_scale_size.dart';

class LogoutSheet extends StatelessWidget {
  const LogoutSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const AppPadding.all(),
          child: Text(
            LocaleKeys.account_logout_description.locale,
            style: Theme.of(context).textTheme.headline1,
            textScaleFactor: ScaleSize.textScaleFactor(context),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const AppPadding.all(),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () => FirebaseAuth.instance.signOut(),
                child: Text(
                  LocaleKeys.account_logout_yes.locale,
                  style: Theme.of(context).textTheme.headline1,
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const AppPadding.all(),
                  backgroundColor: Theme.of(context).backgroundColor,
                ),
                onPressed: () => context.popRoute(),
                child: Text(
                  LocaleKeys.account_logout_no.locale,
                  style: Theme.of(context).textTheme.headline1,
                )),
          ],
        ),
        50.0.sizedBoxOnlyHeight,
      ],
    );
  }
}
