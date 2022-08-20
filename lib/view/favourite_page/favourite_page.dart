import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../core/constant/icon_enum.dart';
import '../../../core/widgets/divider.dart';
import '../../core/extensions/double_extensions.dart';
import '../../core/helper/text_scale_size.dart';
import '../../core/init/lang/locale_keys.g.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.favourite_title.locale,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: CustomDivider(),
        ),
      ),
      body: ListView(children: [
        //TODO: Add favourite items here
        Padding(
          padding: (context.screenHeight * 0.15).edgeIntesetsOnlyBottom,
          child: Column(
            children: [
              _createFavouriteItems("Sprite Can", "325ml", 1.50,
                  "assets/images/png/spriteCan.png"),
              const CustomDivider(),
              _createFavouriteItems(
                  "Diet Coke", "325ml", 1.50, "assets/images/png/dietCoke.png"),
              const CustomDivider(),
              _createFavouriteItems("Coca Cola Can ", "325ml", 1.50,
                  "assets/images/png/cocaCola.png"),
              const CustomDivider(),
              _createFavouriteItems("Apple & Grape Juice", "325ml", 1.50,
                  "assets/images/png/juice.png"),
              const CustomDivider(),
              _createFavouriteItems(
                  "Pepsi Can", "325ml", 1.50, "assets/images/png/pepsiCan.png"),
              const CustomDivider(),
            ],
          ),
        ),
      ]),
      floatingActionButton: Padding(
        padding: const AppPadding.symmetric(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xff53B175),
            fixedSize: const Size(double.infinity, 67),
            padding: const EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.0),
            ),
          ),
          onPressed: () {},
          child: SizedBox(
            width: context.screenWidth,
            child: Center(
              child: Text(
                LocaleKeys.favourite_addToAllCart.locale,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _createFavouriteItems(
      String name, String kg, double price, String imagePath) {
    return Stack(
      children: [
        Padding(
          padding: const AppPadding.all(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                height: 75,
                width: 75,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const AppPadding.onlyLeft(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.subtitle2,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                      textAlign: TextAlign.start,
                    ),
                    10.0.sizedBoxOnlyHeight,
                    Text(
                      "$kg, Price",
                      style: Theme.of(context).textTheme.bodyText2,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                      textAlign: TextAlign.start,
                    ),
                    10.0.sizedBoxOnlyHeight,
                    Text(
                      "Price \$1.50",
                      style: Theme.of(context).textTheme.subtitle2,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: IconEnums.rightarrow.toImage,
                iconSize: 24,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            onPressed: () {},
            icon: IconEnums.close.toImage,
            iconSize: 24,
          ),
        ),
      ],
    );
  }
}
