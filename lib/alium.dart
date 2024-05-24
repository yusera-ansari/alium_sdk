import 'alium_sdk_platform_interface.dart';

class Alium {
  static void trigger(
      String currentScreen, Map<String, String> customerVariables) {
    AliumSdkPlatform.instance.trigger(currentScreen, customerVariables);
  }

  static void config(String url) {
    AliumSdkPlatform.instance.config(url);
  }
}
