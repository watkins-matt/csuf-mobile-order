import 'package:flutter/widgets.dart';
import 'package:mobile_ordering/generated/menu.pb.dart';

class CartCache extends ChangeNotifier {
  final List<MenuItem> items = <MenuItem>[];

  String get badgeText => items.isNotEmpty ? items.length.toString() : '';

  void addAdd(List<MenuItem> items) {
    items.addAll(items);
    notifyListeners();
  }

  void add(MenuItem item) {
    items.add(item);
    notifyListeners();
  }

  void remove(MenuItem item) {
    items.remove(item);
    notifyListeners();
  }
}
