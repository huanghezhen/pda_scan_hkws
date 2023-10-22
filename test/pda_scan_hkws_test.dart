import 'package:flutter_test/flutter_test.dart';
import 'package:pda_scan_hkws/pda_scan_hkws.dart';
import 'package:pda_scan_hkws/pda_scan_hkws_platform_interface.dart';
import 'package:pda_scan_hkws/pda_scan_hkws_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPdaScanHkwsPlatform
    with MockPlatformInterfaceMixin
    implements PdaScanHkwsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PdaScanHkwsPlatform initialPlatform = PdaScanHkwsPlatform.instance;

  test('$MethodChannelPdaScanHkws is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPdaScanHkws>());
  });

  test('getPlatformVersion', () async {
    PdaScanHkws pdaScanHkwsPlugin = PdaScanHkws();
    MockPdaScanHkwsPlatform fakePlatform = MockPdaScanHkwsPlatform();
    PdaScanHkwsPlatform.instance = fakePlatform;

    expect(await pdaScanHkwsPlugin.getPlatformVersion(), '42');
  });
}
