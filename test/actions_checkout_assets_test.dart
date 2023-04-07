import 'dart:io';

import 'package:actions_checkout_assets/actions_checkout_assets.dart';
import 'package:test/test.dart';

void main() {
  group('Checkout Assets', () {
    setUp(() {});

    final action = ActionsCheckoutAssets(
      apiKey: Platform.environment['BINANCE_API_KEY'],
      apiSecret: Platform.environment['BINANCE_API_SECRET'],
    );

    test('Wallet', () {
      expect(action.fetch(), isA<void>());
    });
  });
}
