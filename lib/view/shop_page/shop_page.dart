import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/helper/text_scale_size.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/core/services/firestore.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/icon_enum.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/image_path.dart';
import '../../core/widgets/horizontal_list_view_builder.dart';
import '../../../core/widgets/search_text_field.dart';
import '../../core/init/lang/locale_keys.g.dart';

class ShopPage extends StatefulWidget {
  ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final TextEditingController _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const AppPadding.onlyTop(),
          child: Column(
            children: [
              IconEnums.logo.toImage,
              10.0.sizedBoxOnlyHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconEnums.location.toImage,
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Istanbul, Zeytinburnu",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const AppPadding.symmetric(),
          child: Column(
            children: [
              const SearchBarTextField(),
              10.0.sizedBoxOnlyHeight,
              Image.asset(
                "assets/images/png/banner.png",
                width: context.screenWidth,
                height: 130,
                fit: BoxFit.contain,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.shop_exclusiveOffer.locale,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(LocaleKeys.shop_seeAll.locale),
                  )
                ],
              ),
              const HorizontalListView(),
              Padding(
                padding: const AppPadding.onlyTop(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.shop_topSeller.locale,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.shop_seeAll.locale,
                      ),
                    )
                  ],
                ),
              ),
              const HorizontalListView(),
              Padding(
                padding: const AppPadding.onlyTop(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      LocaleKeys.shop_groceries.locale,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(LocaleKeys.shop_seeAll.locale),
                    )
                  ],
                ),
              ),
              20.0.sizedBoxOnlyHeight,
              const HorizontalListView(),
            ],
          ),
        ),
      ),
    );
  }
}
