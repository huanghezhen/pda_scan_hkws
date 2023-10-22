import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pda_scan_hkws_platform_interface.dart';

/// An implementation of [PdaScanHkwsPlatform] that uses method channels.
class MethodChannelPdaScanHkws extends PdaScanHkwsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pda_scan_hkws');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
