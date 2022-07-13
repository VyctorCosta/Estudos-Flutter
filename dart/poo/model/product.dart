class Product {
  int? code;
  String? productName;
  double? price;
  double? discount;

  Product({this.code, this.discount, this.price, this.productName});

  double get priceWithDiscount {
    return (1 - discount!) * price!;
  }
}