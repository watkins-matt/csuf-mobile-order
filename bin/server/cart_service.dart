import 'dart:collection';

import 'package:grpc/grpc.dart';
import 'package:mobile_ordering/generated/cart.pb.dart';
import 'package:mobile_ordering/generated/cart.pbgrpc.dart';

import 'shopping_cart.dart';

enum OrderState {
  NotStarted,
  Processing,
  Complete,
}

class CartService extends CartServiceBase {
  static SplayTreeMap<String, ShoppingCart> carts =
      SplayTreeMap<String, ShoppingCart>();

  static Map<String, OrderState> state = {};

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
    print('New order submitted for user ${request.clientId}!');

    startProcessingOrder(request.clientId); // ignore: unawaited_futures

    final cart = carts[request.clientId];
    return cart.toCartContents;
  }

  Future<void> startProcessingOrder(String clientId) async {
    state[clientId] = OrderState.Processing;
    await Future.delayed(const Duration(seconds: 30));
    state[clientId] = OrderState.Complete;
  }

  @override
  Future<CartContents> get(ServiceCall call, CartSubmitRequest request) async {
    if (!carts.containsKey(request.clientId)) {
      carts[request.clientId] = ShoppingCart();
    }

    final cart = carts[request.clientId];
    return cart.toCartContents;
  }

  @override
  Future<OrderStatus> status(
      ServiceCall call, CartSubmitRequest request) async {
    if (!state.containsKey(request.clientId)) {
      state[request.clientId] = OrderState.NotStarted;
    }

    return OrderStatus()
      ..ready = state[request.clientId] == OrderState.Complete;
  }
}
