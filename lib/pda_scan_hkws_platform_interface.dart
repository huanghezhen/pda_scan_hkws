import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pda_scan_hkws_method_channel.dart';

abstract class PdaScanHkwsPlatform extends PlatformInterface {
  /// Constructs a PdaScanHkwsPlatform.
  PdaScanHkwsPlatform() : super(token: _token);

  static final Object _token = Object();

  static PdaScanHkwsPlatform _instance = MethodChannelPdaScanHkws();

  /// The default instance of [PdaScanHkwsPlatform] to use.
  ///
  /// Defaults to [MethodChannelPdaScanHkws].
  static PdaScanHkwsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PdaScanHkwsPlatform] when
  /// they register themselves.
  static set instance(PdaScanHkwsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
