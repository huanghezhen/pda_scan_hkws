import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pda_scan_hkws/pda_scan_hkws_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelPdaScanHkws platform = MethodChannelPdaScanHkws();
  const MethodChannel channel = MethodChannel('pda_scan_hkws');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
