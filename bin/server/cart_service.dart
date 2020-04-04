import 'dart:collection';

import 'package:grpc/grpc.dart';
import 'package:mobile_ordering/generated/cart.pb.dart';
import 'package:mobile_ordering/generated/cart.pbgrpc.dart';

import 'shopping_cart.dart';

class CartService extends CartServiceBase {
  static SplayTreeMap<String, ShoppingCart> carts =
      SplayTreeMap<String, ShoppingCart>();

  @override
  Future<CartContents> add(ServiceCall call, CartModifyRequest request) async {
    if (!carts.containsKey(request.clientId)) {
      carts[request.clientId] = ShoppingCart()..items = [request.item];
    } else {
      carts[request.clientId].items.add(request.item);
    }

    final cart = carts[request.clientId];
    return cart.toCartContents;
  }

  @override
  Future<CartContents> remove(
      ServiceCall call, CartModifyRequest request) async {
    if (!carts.containsKey(request.clientId)) {
      carts[request.clientId] = ShoppingCart();
    }

    final cart = carts[request.clientId];
    cart.items.remove(request.item);
    return cart.toCartContents;
  }

  @override
  Future<CartContents> submit(
      ServiceCall call, CartSubmitRequest request) async {
    // TODO: implement submit
    return null;
  }

  @override
  Future<CartContents> get(ServiceCall call, CartSubmitRequest request) async {
    if (!carts.containsKey(request.clientId)) {
      carts[request.clientId] = ShoppingCart();
    }

    final cart = carts[request.clientId];
    return cart.toCartContents;
  }
}
