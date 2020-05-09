import 'package:grpc/grpc.dart';
import 'package:mobile_ordering/generated/menu.pb.dart';
import 'package:mobile_ordering/generated/menu.pbgrpc.dart';

class MenuService extends MenuServiceBase {
  // Initialize with example items. Final version should
  // load menu items from a json file.
  List<MenuItem> items = [
    MenuItem()
      ..name = 'Pizza'
      ..price = 5.99,
    MenuItem()
      ..name = 'Sandwich'
      ..price = 2.99,
    MenuItem()
      ..name = 'Hambuger'
      ..price = 3.99,
    MenuItem()
      ..name = 'Chicken Strips'
      ..price = 2.99,
    MenuItem()
      ..name = 'Hot Dog'
      ..price = 1.99,
    MenuItem()
      ..name = 'Chocolate Chip Cookie'
      ..price = 0.99,
    MenuItem()
      ..name = 'Soda'
      ..price = 0.99
  ];

  @override
  Future<MenuReply> get(ServiceCall call, MenuRequest request) async {
    MenuReply reply = MenuReply();
    reply.items.addAll(items);
    print(call.clientMetadata);
    return reply;
  }
}
