import 'dart:io';

import 'package:actions_checkout_assets/actions_checkout_assets.dart';
import 'package:args/args.dart';

Future<void> main(List<String> args) async {
  final parser = ArgParser()
    ..addOption('key', abbr: 'k')
    ..addOption('secret', abbr: 's');

  final arguments = parser.parse(args);
  if (arguments['key'] == null || arguments['secret'] == null) {
    stderr.writeln('Binance API `--key` or `--secret` argument is not set');
    return;
  }

  final action = ActionsCheckoutAssets(
    apiKey: arguments['key'],
    apiSecret: arguments['secret'],
  );
  await action.fetch();
}
