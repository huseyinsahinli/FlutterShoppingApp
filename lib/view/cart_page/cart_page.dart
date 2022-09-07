import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_icon.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:provider/provider.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/widgets/divider.dart';
import '../../core/helper/db_helper.dart';
import '../../core/helper/text_scale_size.dart';
import '../../core/models/cart_model.dart';
import '../../core/providers/cart_provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  DBHelper dbHelper = DBHelper();
  bool isTappedRemove = false;
  bool isTappedAdd = false;
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
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
      body: Column(
        children: [
          FutureBuilder(
            future: cart.getData(),
            builder: ((context, AsyncSnapshot<List<Product>> snapshot) {
              if (snapshot.hasData) {
                return Expanded(
                  child: snapshot.data!.isNotEmpty
                      ? ListView.separated(
                          separatorBuilder: (context, index) =>
                              const CustomDivider(),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            var product = snapshot.data![index];
                            return Stack(
                              children: [
                                Padding(
                                  padding: const AppPadding.all(),
                                  child: Row(
                                    children: [
                                      Image(
                                        image: NetworkImage(
                                          product.productImage!,
                                        ),
                                        fit: BoxFit.contain,
                                        width: 100,
                                        height: 100,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const AppPadding.onlyLeft(),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                product.productName!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1,
                                                textAlign: TextAlign.start,
                                                textScaleFactor:
                                                    ScaleSize.textScaleFactor(
                                                        context),
                                              ),
                                              5.0.sizedBoxOnlyHeight,
                                              Text(
                                                "${product.productQuantity} kg",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2,
                                                textAlign: TextAlign.start,
                                                textScaleFactor:
                                                    ScaleSize.textScaleFactor(
                                                        context),
                                              ),
                                              10.0.sizedBoxOnlyHeight,
                                              Text(
                                                "\$${product.productPrice}",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline2,
                                                textScaleFactor:
                                                    ScaleSize.textScaleFactor(
                                                        context),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 45.67,
                                            height: 45.67,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.grey,
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                    color: Color(0xffF0F0F0),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.0),
                                                ),
                                              ),
                                              onPressed: () {
                                                if (!isTappedAdd) {
                                                  isTappedAdd = true;
                                                  int quantity =
                                                      product.productQuantity!;
                                                  double price = double.parse(
                                                      product
                                                          .productInitialPrice
                                                          .toString());
                                                  quantity++;
                                                  double newPrice =
                                                      price * quantity;

                                                  dbHelper
                                                      .updateQuanity(Product(
                                                          id: product.id,
                                                          productId:
                                                              product.productId,
                                                          productName: product
                                                              .productName,
                                                          productInitialPrice:
                                                              product
                                                                  .productInitialPrice,
                                                          productPrice:
                                                              newPrice,
                                                          productStock: product
                                                              .productStock,
                                                          productQuantity:
                                                              quantity,
                                                          productImage: product
                                                              .productImage))
                                                      .then((value) {
                                                    newPrice = 0;
                                                    cart.addTotalprice(
                                                        double.parse(product
                                                            .productInitialPrice
                                                            .toString()));
                                                    isTappedAdd = false;
                                                  }).onError(
                                                          (error, stackTrace) {
                                                    // print(error.toString());
                                                  });
                                                }
                                              },
                                              child: IconEnums.plus.toImage,
                                            ),
                                          ),
                                          Padding(
                                            padding: const AppPadding.allLow(),
                                            child: Text(
                                              product.productQuantity
                                                  .toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                              textScaleFactor:
                                                  ScaleSize.textScaleFactor(
                                                      context),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 45.67,
                                            height: 45.67,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.grey,
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  side: const BorderSide(
                                                    color: Color(0xffF0F0F0),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.0),
                                                ),
                                              ),
                                              onPressed: () {
                                                if (!isTappedRemove) {
                                                  isTappedRemove = true;
                                                  int quantity =
                                                      product.productQuantity!;
                                                  double price = double.parse(
                                                      product
                                                          .productInitialPrice
                                                          .toString());
                                                  if (quantity > 1) {
                                                    quantity--;
                                                    double newPrice =
                                                        price * quantity;

                                                    dbHelper
                                                        .updateQuanity(Product(
                                                            id: product.id,
                                                            productId: product
                                                                .productId,
                                                            productName: product
                                                                .productName,
                                                            productInitialPrice:
                                                                product
                                                                    .productInitialPrice,
                                                            productPrice:
                                                                newPrice,
                                                            productStock: product
                                                                .productStock,
                                                            productQuantity:
                                                                quantity,
                                                            productImage: product
                                                                .productImage))
                                                        .then((value) {
                                                      newPrice = 0;
                                                      cart.removeTotalPrice(
                                                          double.parse(product
                                                              .productInitialPrice
                                                              .toString()));
                                                      isTappedRemove = false;
                                                    }).onError((error,
                                                            stackTrace) {});
                                                  } else {
                                                    isTappedRemove = false;
                                                    cart.removeProductItem(
                                                        product);
                                                  }
                                                }
                                              },
                                              child: product.productQuantity! >
                                                      1
                                                  ? AppIcons.productsRemove
                                                  : AppIcons.productsRemoveAll,
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ],
                            );
                          })
                      : Center(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              LocaleKeys.cart_productCart_emptyCart.locale,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    color: Colors.green[200],
                                    fontSize:
                                        ScaleSize.textScaleFactor(context),
                                  ),
                            ),
                          ],
                        )),
                );
              } else {}

              return const Text('Null');
            }),
          ),
        ],
      ),
      floatingActionButton: cart.getTotalPrice() != 0
          ? Padding(
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
                            "\$${cart.getTotalPrice()}",
                            style: Theme.of(context).textTheme.bodyText1,
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
