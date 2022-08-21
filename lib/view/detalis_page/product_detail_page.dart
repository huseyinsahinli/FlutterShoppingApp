import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../core/constant/icon_enum.dart';
import '../../core/helper/text_scale_size.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  //TODO : Add the product details here
  bool _open = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.file_upload_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(
                minHeight: 200,
              ),
              height: context.screenHeight * 0.3,
              width: context.screenWidth,
              padding: const AppPadding.allHigh(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/png/redApple.png"),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/png/redApple.png"),
                ),
              ),
            ),
            Padding(
              padding: const AppPadding.symmetric(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Naturel Red Apple",
                        style: Theme.of(context).textTheme.headline1,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: IconEnums.favourite.toImage,
                      )
                    ],
                  ),
                  Text(
                    "1kg,Price",
                    style: Theme.of(context).textTheme.headline3,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  10.0.sizedBoxOnlyHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: IconEnums.remove.toImage),
                          Container(
                            padding: const AppPadding.symmetricLow(),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffE2E2E2),
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(17)),
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: Theme.of(context).textTheme.bodyText2,
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: IconEnums.plus.toImage,
                          ),
                        ],
                      ),
                      Text(
                        "\$4.99",
                        style: Theme.of(context).textTheme.bodyText2,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      )
                    ],
                  ),
                  10.0.sizedBoxOnlyHeight,
                  ExpansionTile(
                    trailing: !_open
                        ? IconEnums.rightarrow.toImage
                        : const Icon(
                            Icons.keyboard_arrow_down,
                          ),
                    onExpansionChanged: _openExpansionTile,
                    tilePadding: const EdgeInsets.only(right: 20),
                    title: Text(
                      LocaleKeys.productDetails_title.locale,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.subtitle2,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                    children: <Widget>[
                      Text(
                        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.\n',
                        style: Theme.of(context).textTheme.bodyText2,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                    ],
                  ),
                  10.0.sizedBoxOnlyHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nutritions",
                        style: Theme.of(context).textTheme.subtitle2,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Color(0xffEBEBEB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Center(
                              child: Text(
                                "100gr",
                                style: Theme.of(context).textTheme.bodyText2,
                                textScaleFactor:
                                    ScaleSize.textScaleFactor(context),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  10.0.sizedBoxOnlyHeight,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Review",
                        style: Theme.of(context).textTheme.subtitle2,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                      Image.asset("assets/images/png/star.png")
                    ],
                  )
                ],
              ),
            ),
            (context.screenHeight * 0.3).sizedBoxOnlyHeight,
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const AppPadding.symmetric(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
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
            child: Text(
              LocaleKeys.productDetails_addToCart.locale,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
              textScaleFactor: ScaleSize.textScaleFactor(context),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _openExpansionTile(bool value) {
    setState(() {
      _open = value;
    });
  }
}
