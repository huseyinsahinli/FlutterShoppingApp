import 'dart:io' as io;

// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/cart_model.dart';

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    } else {
      _db = await initDatabase();
      return _db;
    }
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'cart.db');
    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE cart (id VARCHAR PRIMARY KEY , productId VARCHAR UNIQUE,productName TEXT,productInitialPrice DOUBLE, productPrice DOUBLE , productStock INTEGER, productQuantity INTEGER, productImage TEXT )');
  }

  Future<Product> insert(Product product) async {
    var dbClient = await db;
    await dbClient!.insert('cart', product.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return product;
  }

  Future<List<Product>> getCartList() async {
    var dbClient = await db;
    final List<Map<String, Object?>> queryResult =
        await dbClient!.query('cart');

    return queryResult.map((e) => Product.fromMap(e)).toList();
  }

  Future<int> delete(String id) async {
    var dbClient = await db;
    return await dbClient!.delete('cart', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> updateQuanity(Product product) async {
    var dbClient = await db;
    return await dbClient!.update('cart', product.toMap(),
        where: 'id = ?', whereArgs: [product.id]);
  }
}
