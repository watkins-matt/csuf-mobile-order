import 'package:grpc/grpc.dart';

import 'cart_service.dart';
import 'menu_service.dart';
import 'payment_service.dart';

class ServiceProvider {
  Server server;
  List<Service> availableServices = [
    MenuService(),
    CartService(),
    PaymentService()
  ];
  final int serverPort = 50051;

  ServiceProvider() {
    server = Server(availableServices);
  }

  Future start() async {
    server.serve(port: serverPort);
    print('Server listening on port $serverPort...');
  }
}
