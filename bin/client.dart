import 'package:grpc/grpc.dart';
import 'package:mobile_ordering/generated/menu.pb.dart';
import 'package:mobile_ordering/generated/menu.pbgrpc.dart';

void main() async {
  var channel = ClientChannel(
    '10.10.10.22',
    port: 50051,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  var menu = MenuClient(channel);

  try {
    final result = await menu.get(MenuRequest());
    displayMenu(result);
  } catch (e) {
    print("Error: $e");
  }

  await channel.shutdown();
}

void displayMenu(MenuReply menu) {
  menu.items.forEach((item) {
    print(item.name + " " + item.price.toString() + "\n");
  });
}
