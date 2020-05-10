import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:mobile_ordering/generated/cart.pbgrpc.dart';
import 'package:mobile_ordering/generated/menu.pbgrpc.dart';
import 'package:mobile_ordering/generated/payment.pbgrpc.dart';
import 'package:mobile_ordering/generated/recommendation.pbgrpc.dart';

import '../bin/server/service_provider.dart';

void main() {
  final server = ServiceProvider();
  ClientChannel channel;

  setUp(() async {
    await server.start();
    channel = ClientChannel(
      '127.0.0.1',
      port: 50051,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  });

  tearDown(() async {
    await server.stop();
    await channel.shutdown();
  });

  test('Menu Test: Ensure menu is returned correctly.', () async {
    const EXPECTED_ITEM_COUNT = 7;
    final menu = MenuClient(channel);

    final result = await menu.get(MenuRequest());
    expect(result.items.length, EXPECTED_ITEM_COUNT);
  });

  test('Cart Test: Ensure add/remove client server code works..', () async {
    final menu = MenuClient(channel);
    final cart = CartClient(channel);

    MenuReply result = await menu.get(MenuRequest());
    MenuItem firstItem = result.items.first;
    MenuItem lastItem = result.items.last;

    var cartContents = await cart.add(CartModifyRequest()
      ..clientId = '1'
      ..item = firstItem);

    expect(cartContents.items.length, 1);

    cartContents = await cart.add(CartModifyRequest()
      ..clientId = '1'
      ..item = lastItem);

    // We added another item, cart should have two items
    expect(cartContents.items.length, 2);

    var expectedTotal = firstItem.price + lastItem.price;
    expectedTotal = expectedTotal.roundToDouble();

    // Ensure the totals are returned correctly
    expect(expectedTotal, cartContents.total.roundToDouble());

    await channel.shutdown();
  });

  test('Payment Test: Ensure payment works correctly.', () async {
    final payment = PaymentClient(channel);

    final result = await payment.submit(PaymentInfo()
      ..encryptedCreditCardInfo = '1234567890'
      ..amount = 20);
    expect(result.success, true);
  });

  test('Recommendation Test: Ensure recommendations works correctly.',
      () async {
    final rec = RecommendationClient(channel);

    final result =
        await rec.getRecommendation(CartSubmitRequest()..clientId = '1');

    expect(result.items.first.name, 'Chocolate Chip Cookie');
  });
}
