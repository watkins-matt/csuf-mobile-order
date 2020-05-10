import 'package:grpc/grpc.dart';

import 'availability_service.dart';
import 'cart_service.dart';
import 'menu_service.dart';
import 'payment_service.dart';
import 'recommendation_service.dart';

class ServiceProvider {
  Server server;
  List<Service> availableServices = [
    AvailabilityService(),
    MenuService(),
    CartService(),
    PaymentService(),
    RecommendationService()
  ];
  final int serverPort = 50051;

  ServiceProvider() {
    server = Server(availableServices);
  }

  Future<void> start() async {
    await server.serve(port: serverPort);
    print('Server listening on port $serverPort...');
  }

  Future<void> stop() async {
    await server.shutdown();
  }
}
