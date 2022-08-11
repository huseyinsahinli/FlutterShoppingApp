import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/icon_enum.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/image_path.dart';
import '../../../core/widgets/list.dart';
import '../../../core/widgets/search_text_field.dart';

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
                    Strings.exclusiveOffer,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(Strings.seeAll),
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
                      Strings.bestSelling,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        Strings.seeAll,
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
                      Strings.groceries,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(Strings.seeAll),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const AppPadding.onlyTop(),
                child: SizedBox(
                  height: 105,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    cacheExtent: 105,
                    itemExtent: 250,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const AppPadding.onlyRight(),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: cGroceriesBackgroundColors[index],
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Padding(
                              padding: const AppPadding.symmetric(),
                              child: Row(
                                children: [
                                  Image.asset(
                                      ImagePath.groceriesListImagePath[index]),
                                  Padding(
                                    padding: const AppPadding.onlyLeft(),
                                    child: Text(
                                      Strings.groceriesListHeads[index],
                                      style:
                                          Theme.of(context).textTheme.headline3,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
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
