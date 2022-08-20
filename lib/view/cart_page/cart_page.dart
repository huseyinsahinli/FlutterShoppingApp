import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/widgets/divider.dart';
import '../../core/helper/text_scale_size.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final String _imagePath = "assets/images/png/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: CustomDivider(),
        ),
        title: Text(
          LocaleKeys.cart_title.locale,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          _createCartItems(
              "Bell Pepper Red", "1kg", 2.95, "${_imagePath}bellPepper.png", 1),
          const CustomDivider(),
          _createCartItems(
              "Banana", "1kg", 1.75, "${_imagePath}bananas.png", 2),
          const CustomDivider(),
          _createCartItems("Ginger", "3kg", 5.95, "${_imagePath}ginger.png", 3),
          const CustomDivider(),
          _createCartItems(
              "Egg Chicken Red", "4pcs", 1.99, "${_imagePath}egg.png", 2),
          const CustomDivider(),
          _createCartItems(
              "Bell Red", "1kg", 2.95, "${_imagePath}bellPepper.png", 1),
          const CustomDivider(),
          SizedBox(
            height: context.screenHeight * 0.15,
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const AppPadding.symmetric(),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: 8.0.edgeIntesetsAll,
                child: FittedBox(
                  child: Text(
                    LocaleKeys.cart_checkout.locale,
                    style: Theme.of(context).textTheme.bodyText1,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                ),
              ),
              10.0.sizedBoxOnlyWidth,
              Padding(
                padding: const AppPadding.allLow(),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff489E67),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const AppPadding.allLow() / 2,
                    child: Text(
                      "\$20.92",
                      style: Theme.of(context).textTheme.bodyText1,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _createCartItems(
      String name, String kg, double price, String imagePath, int stock) {
    return Stack(
      children: [
        Padding(
          padding: const AppPadding.all(),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                height: 75,
                width: 75,
                fit: BoxFit.contain,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const AppPadding.onlyLeft(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.subtitle2,
                        textAlign: TextAlign.start,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                      5.0.sizedBoxOnlyHeight,
                      Text(
                        kg,
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.start,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                      10.0.sizedBoxOnlyHeight,
                      Text(
                        "\$${price * stock}",
                        style: Theme.of(context).textTheme.headline2,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const AppPadding.allLow(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 45.67,
                  height: 45.67,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey,
                      primary: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xffF0F0F0),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                    ),
                    onPressed: () {},
                    child: IconEnums.plus.toImage,
                  ),
                ),
                Padding(
                  padding: const AppPadding.symmetricOnlyHorizontal(),
                  child: Text(
                    "$stock",
                    style: Theme.of(context).textTheme.subtitle1,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                ),
                SizedBox(
                  width: 45.67,
                  height: 45.67,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.grey,
                      primary: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xffF0F0F0),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                    ),
                    onPressed: () {},
                    child: stock == 1
                        ? const Icon(Icons.delete)
                        : IconEnums.remove.toImage,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
