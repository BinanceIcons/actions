import 'package:binance_api/binance_api.dart';

class ActionsCheckoutAssets {
  factory ActionsCheckoutAssets({String? apiKey, String? apiSecret}) {
    final api = BinanceApiSpot()
      ..withCredentials(
        apiKey: apiKey,
        apiSecret: apiSecret,
      );

    return ActionsCheckoutAssets._(api);
  }

  final BinanceApiSpot _api;

  ActionsCheckoutAssets._(BinanceApiSpot api) : _api = api;

  /// Fetch assets
  Future<void> fetch() async {
    try {
      final assets = await _api.wallet();
      for (final asset in assets) {
        print(asset.toJson());
      }
    } on BinanceApiBaseException catch (e) {
      print([e]);
    }
  }
}
