import 'package:grpc/src/server/call.dart';
import 'package:mobile_ordering/generated/cart.pb.dart';
import 'package:mobile_ordering/generated/menu.pb.dart';
import 'package:mobile_ordering/generated/recommendation.pbgrpc.dart';

class RecommendationService extends RecommendationServiceBase {
  @override
  Future<MenuReply> getRecommendation(
      ServiceCall call, CartSubmitRequest request) async {
    MenuReply reply = MenuReply();
    reply
      ..items.add(
        MenuItem()
          ..name = 'Chocolate Chip Cookie'
          ..price = 0.99,
      );

    return reply;
  }
}
