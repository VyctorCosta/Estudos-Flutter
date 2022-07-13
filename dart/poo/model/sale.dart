

import 'client.dart';
import 'sale_item.dart';

class Sale {
  Client? client;
  List<SaleItem>? items;

  Sale({this.client, this.items = const []});

  double get amountValue {
    return items!
      .map((item) => item.price * item.amount!)
      .reduce((value, element) => value + element);
  }
}