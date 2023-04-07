import 'package:actions_checkout_assets/actions_checkout_assets.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final checkout = ActionsCheckoutAssets();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(checkout, isTrue);
    });
  });
}
