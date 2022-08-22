import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        LocaleKeys.account_help.locale,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
