import 'product.dart';

class SaleItem {
  Product? product;
  int? amount;
  double? _price;

  SaleItem({this.product, this.amount});

  double get price {
    if (product != null && _price == null) {
      _price = product!.priceWithDiscount;
    }

    return _price!;
  }

  void set price(double newPrice) {
    if (newPrice > 0) {
      _price = newPrice;
    }
  }
}