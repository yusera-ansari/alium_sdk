
import 'alium_sdk_platform_interface.dart';

class AliumSdk {
  Future<String?> getPlatformVersion() {
    return AliumSdkPlatform.instance.getPlatformVersion();
  }
}
