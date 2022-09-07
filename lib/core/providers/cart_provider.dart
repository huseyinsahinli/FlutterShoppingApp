import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:nectar_ui/core/models/cart_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helper/db_helper.dart';

class CartProvider with ChangeNotifier {
  DBHelper db = DBHelper();
  List<String> _alreadyCartItems = [];
  bool _sameItemCheck = false;
  int _counter = 0;
  int get counter => _counter;

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;
  bool get sameItemCheck => _sameItemCheck;
  late Future<List<Product>> _basket;
  Future<List<Product>> get basket => _basket;
  Future<List<Product>> getData() async {
    _basket = db.getCartList();
    return _basket;
  }

  void _setPrefItems() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('cart_item', _counter);
    pref.setDouble('total_price', _totalPrice);
    pref.setStringList('already_cart_items', _alreadyCartItems);

    notifyListeners();
  }

  void _getPrefItems() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _counter = pref.getInt('cart_item') ?? 0;
    _totalPrice = pref.getDouble('total_price') ?? 0.0;
    _alreadyCartItems = pref.getStringList('already_cart_items') ?? [];

    notifyListeners();
  }

  void addCounter() {
    _counter++;

    _setPrefItems();
    notifyListeners();
  }

  void removeConter() {
    _counter--;
    _setPrefItems();
    notifyListeners();
  }

  int getCounter() {
    _getPrefItems();
    return _counter;
  }

  void addTotalprice(double productPrice) {
    _totalPrice += productPrice;
    _setPrefItems();
    notifyListeners();
  }

  void removeTotalPrice(double productPrice) {
    _totalPrice -= productPrice;
    _setPrefItems();
    notifyListeners();
  }

  void removeCartItem(String index) {
    _alreadyCartItems.remove(index);
    _setPrefItems();
    notifyListeners();
  }

  double getTotalPrice() {
    _getPrefItems();
    return _totalPrice;
  }

  void addItemsIndex(String index) {
    // print(_alreadyCartItems);
    if (_alreadyCartItems.any((element) => element == index)) {
      _sameItemCheck = true;

      notifyListeners();
      // print('Product is already added in cart');
    } else {
      _sameItemCheck = false;
      _alreadyCartItems.add(index);
      _setPrefItems();
      notifyListeners();
    }
    _getPrefItems();
    notifyListeners();
  }

  void removeProductItem(Product product) {
    _totalPrice -= product.productPrice!;
    _counter--;
    _alreadyCartItems.remove(product.id!);
    db.delete(product.id!);
    _setPrefItems();
    notifyListeners();
  }
}
