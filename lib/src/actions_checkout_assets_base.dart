import 'package:binance_api/binance_api.dart';
import 'package:dio/dio.dart';

class ActionsCheckoutAssets {
  factory ActionsCheckoutAssets({String? apiKey, String? apiSecret}) {
    final api = BinanceApiSpot()
      ..withCredentials(
        apiKey: apiKey,
        apiSecret: apiSecret,
      );

    final dio = Dio()
      ..options.followRedirects = false
      ..options.headers = {
        ...{'Accept': 'application/json'},
      }
      ..options.validateStatus = (int? status) => status != null && status < 500;

    return ActionsCheckoutAssets._(api, dio);
  }

  final BinanceApiSpot _api;

  final Dio _dio;

  ActionsCheckoutAssets._(BinanceApiSpot api, Dio dio)
      : _api = api,
        _dio = dio;

  /// Fetch assets
  Future<void> fetch() async {
    try {
      final assets = await _api.wallet();
      print(assets);
      // for (final asset in assets) {
      //   print(asset.toJson());
      // }
    } on BinanceApiBaseException catch (e) {
      print([e]);
    }
  }
}
