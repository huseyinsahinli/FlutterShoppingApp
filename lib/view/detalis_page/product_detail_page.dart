import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/constant/app_icon.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/core/widgets/my_custom_column.dart';

import '../../../core/constant/icon_enum.dart';
import '../../core/helper/text_scale_size.dart';

class ProductDetailsPage extends StatefulWidget {
  final QueryDocumentSnapshot data;

  const ProductDetailsPage({Key? key, required this.data}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

int noOfPaletteColors = 4;

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool _open = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.data['name'],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppIcons.productsShare,
          ),
          IconButton(
            onPressed: () {},
            icon: IconEnums.favourite.toImage,
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
              padding: const AppPadding.symmetric(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.data['image']),
                  opacity: 0.9,
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Image.network(
                    widget.data['image'],
                    fit: BoxFit.cover,
                    width: context.screenWidth / 2,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const AppPadding.symmetric(),
              child: CustomColumn(
                spaceHeight: 10,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.data['name'],
                        style: Theme.of(context).textTheme.headline1,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                      Column(
                        children: [
                          Text(
                            '1kg,Price',
                            style: Theme.of(context).textTheme.headline3,
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                          Text(
                            "\$${widget.data['price']}",
                            style: Theme.of(context).textTheme.headline3,
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffE2E2E2),
                            width: 1,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17)),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: IconEnums.remove.toImage,
                        ),
                      ),
                      Padding(
                        padding: const AppPadding.symmetric(),
                        child: Expanded(
                          child: Text(
                            "1 kg",
                            style: Theme.of(context).textTheme.headline2,
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffE2E2E2),
                            width: 1,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17)),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: IconEnums.plus.toImage,
                        ),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: cMainColor,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                25,
                              ),
                            )),
                        child: Padding(
                          padding: const AppPadding.allLow(),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Total Price: ',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                              TextSpan(
                                text: '\$5',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(
                                      color: cMainColor,
                                    ),
                              )
                            ]),
                          ),
                        ),
                      )),
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
