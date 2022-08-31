import 'dart:convert';

class Product {
  late final String? id;
  final String? productId;
  final String? productName;
  final double? productInitialPrice;
  final double? productPrice;
  final int? productStock;
  final int? productQuantity;
  final String? productImage;
  Product({
    required this.id,
    required this.productId,
    required this.productName,
    required this.productInitialPrice,
    required this.productPrice,
    required this.productStock,
    required this.productQuantity,
    required this.productImage,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'productInitialPrice': productInitialPrice,
      'productPrice': productPrice,
      'productStock': productStock,
      'productQuantity': productQuantity,
      'productImage': productImage,
    };
  }

  Product.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        productId = map['productId'],
        productName = map['productName'],
        productInitialPrice = map['productInitialPrice'],
        productPrice = map['productPrice'],
        productStock = map['productStock'],
        productQuantity = map['productQuantity'],
        productImage = map['productImage'];

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, productId: $productId, productName: $productName,productInitialPrice: $productInitialPrice productPrice: $productPrice, productStock: $productStock, productQuantity: $productQuantity productImage: $productImage)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.productId == productId &&
        other.productName == productName &&
        other.productInitialPrice == productInitialPrice &&
        other.productPrice == productPrice &&
        other.productStock == productStock &&
        other.productQuantity == productQuantity &&
        other.productImage == productImage;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        productId.hashCode ^
        productName.hashCode ^
        productInitialPrice.hashCode ^
        productPrice.hashCode ^
        productStock.hashCode ^
        productQuantity.hashCode ^
        productImage.hashCode;
  }
}
