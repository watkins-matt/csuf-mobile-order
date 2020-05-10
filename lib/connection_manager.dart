import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile_ordering/generated/payment.pbgrpc.dart';
import 'package:mobile_ordering/generated/recommendation.pbgrpc.dart';

import 'generated/availability.pbgrpc.dart';
import 'generated/cart.pbgrpc.dart';
import 'generated/menu.pbgrpc.dart';

class ConnectionManager extends ChangeNotifier {
  String serverIp;
  final int serverPort = 50051;
  bool connected = false;

  ClientChannel _channel;
  AvailabilityClient availability;
  MenuClient menu;
  CartClient cart;
  PaymentClient payment;
  RecommendationClient rec;

  Future<bool> connect([String serverIp]) async {
    this.serverIp = serverIp;

    _channel = ClientChannel(
      serverIp,
      port: serverPort,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    availability = AvailabilityClient(_channel);
    menu = MenuClient(_channel);
    cart = CartClient(_channel);
    payment = PaymentClient(_channel);
    rec = RecommendationClient(_channel);

    try {
      await availability.available(AvailabilityRequest());
      connected = true;
    } catch (exception) {
      print('Server currently unavailable.');
      connected = false;
    }

    notifyListeners();
    return connected;
  }

  Future disconnect() async {
    await _channel.shutdown();
    connected = false;
    notifyListeners();
  }
}
