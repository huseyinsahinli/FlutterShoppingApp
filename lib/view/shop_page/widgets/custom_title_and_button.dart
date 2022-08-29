import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';

import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/navigator/app_router.dart';
import '../../../core/padding/app_padding.dart';

class CustomTitleAndButton extends StatelessWidget {
  final String title;
  final QuerySnapshot data;
  const CustomTitleAndButton({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const AppPadding.onlyTop(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          TextButton(
            onPressed: () {
              context.router.push(
                SeeAllRoute(title: title, data: data),
              );
            },
            child: Text(
              LocaleKeys.shop_seeAll.locale,
            ),
          )
        ],
      ),
    );
  }
}
