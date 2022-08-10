import 'package:flutter/material.dart';
import '../../../core/constant/app_constant.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/widgets/divider.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

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
        title: const Text(
          Strings.myCart,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 117),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _createCartItems("Bell Pepper Red", "1kg", 2.95,
                      "${_imagePath}bellPepper.png", 1),
                  const CustomDivider(),
                  _createCartItems(
                      "Banana", "1kg", 1.75, "${_imagePath}bananas.png", 2),
                  const CustomDivider(),
                  _createCartItems(
                      "Ginger", "3kg", 5.95, "${_imagePath}ginger.png", 3),
                  const CustomDivider(),
                  _createCartItems("Egg Chicken Red", "4pcs", 1.99,
                      "${_imagePath}egg.png", 2),
                  const CustomDivider(),
                  _createCartItems("Bell Red", "1kg", 2.95,
                      "${_imagePath}bellPepper.png", 1),
                  const CustomDivider(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: Text(
                      Strings.goToCheckout,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff489E67),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "\$ 0.92",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
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
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 20),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(imagePath, height: 75),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.subtitle2,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$kg, Price",
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            child: IconEnums.remove.toImage,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: Text(
                            "$stock",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                        SizedBox(
                          width: 45,
                          height: 45,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                onPrimary: Colors.grey,
                                primary: Colors.white,
                                elevation: 0,
                                fixedSize: const Size(45.67, 45.67),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Color(0xffF0F0F0),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                              ),
                              onPressed: () {},
                              child: IconEnums.plus.toImage),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: -15,
            right: -15,
            child: SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, icon: IconEnums.close.toImage),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      "\$${price.toString()}",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
