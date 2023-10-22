
import 'pda_scan_hkws_platform_interface.dart';

class PdaScanHkws {
  Future<String?> getPlatformVersion() {
    return PdaScanHkwsPlatform.instance.getPlatformVersion();
  }
}
