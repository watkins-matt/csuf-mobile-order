import 'package:mobile_ordering/generated/cart.pb.dart';
import 'package:mobile_ordering/generated/menu.pb.dart';

class ShoppingCart {
  List<MenuItem> items = List<MenuItem>();
  double get total {
    double amount = 0;
    items.forEach((item) {
      amount += item.price;
    });
    return amount;
  }

  CartContents get toCartContents {
    return CartContents()
      ..items.addAll(items)
      ..total = total;
  }
}
