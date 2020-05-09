import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile_ordering/generated/payment.pbgrpc.dart';

import 'generated/cart.pbgrpc.dart';
import 'generated/menu.pbgrpc.dart';

class ConnectionManager extends ChangeNotifier {
  String serverIp;
  final int serverPort = 50051;
  bool connected = false;

  ClientChannel _channel;
  MenuClient menu;
  CartClient cart;
  PaymentClient payment;

  Future<void> connect([String serverIp]) async {
    this.serverIp = serverIp;

    _channel = ClientChannel(
      serverIp,
      port: serverPort,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    menu = MenuClient(_channel);
    cart = CartClient(_channel);
    payment = PaymentClient(_channel);
    connected = true;
    notifyListeners();
  }

  Future disconnect() async {
    await _channel.shutdown();
    connected = false;
    notifyListeners();
  }
}
