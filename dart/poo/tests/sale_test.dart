import '../model/client.dart';
import '../model/product.dart';
import '../model/sale.dart';
import '../model/sale_item.dart';

main() {
  var sale = Sale(
    client: Client(
      name: "Vyctao",
      cpf: "126.473.132-11"
    ),
    items: <SaleItem>[
      SaleItem(
        product: Product(
          code: 123131,
          productName: "Produto de limpeza",
          price: 121.12,
          discount: 0.1,
        ),
        amount: 2
      ),
      SaleItem(
        product: Product(
          code: 123445,
          productName: "Produto de cozinha",
          price: 50.50,
          discount: 0.25,
        ),
        amount: 3
      ),
      SaleItem(
        product: Product(
          code: 332131,
          productName: "Produto de caminhada",
          price: 12.0,
          discount: 0.05,
        ),
        amount: 2
      ),
    ],
  );

  print(sale.amountValue);
}