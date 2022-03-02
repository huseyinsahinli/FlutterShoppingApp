import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/image_path.dart';
import '../utilities/strings.dart';
import '../widgets/divider.dart';

class FavouritePage extends StatefulWidget {
  FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  String _imagePath = "assets/images/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            Strings.favourite,
            style: cMainTitleStyle,
          ),
          bottom: const PreferredSize(
              child: CustomDivider(), preferredSize: Size.fromHeight(4.0)),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: Column(
              children: [
                _createFavouriteItems(
                    "Sprite Can", "325ml", 1.50, _imagePath + "spriteCan.png"),
                const CustomDivider(),
                _createFavouriteItems(
                    "Diet Coke", "325ml", 1.50, _imagePath + "dietCoke.png"),
                const CustomDivider(),
                _createFavouriteItems("Coca Cola Can ", "325ml", 1.50,
                    _imagePath + "cocaCola.png"),
                const CustomDivider(),
                _createFavouriteItems("Apple & Grape Juice", "325ml", 1.50,
                    _imagePath + "juice.png"),
                const CustomDivider(),
                _createFavouriteItems(
                    "Pepsi Can", "325ml", 1.50, _imagePath + "pepsiCan.png"),
                const CustomDivider(),
              ],
            ),
          ),
        ]),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
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
            child: const SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  Strings.addAllToCart,
                  style: cFavouritemAddAllToCartString,
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  Widget _createFavouriteItems(
      String name, String kg, double price, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 20, top: 20),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(imagePath,
                  height: 75, width: 75, fit: BoxFit.contain),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        name,
                        style: cCartProductNameTextStyle,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$kg, Price",
                      style: cCartKgTextStyle,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 15,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "\$1.50",
                    style: cCartProductNameTextStyle,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: ImagePath.backArrowIcon,
                      iconSize: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
