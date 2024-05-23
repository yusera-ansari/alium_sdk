import 'alium_sdk_platform_interface.dart';

class AliumSdk {
  static void loadAliumSurvey(
      String currentScreen, Map<String, dynamic> customerVariables) {
    AliumSdkPlatform.instance.loadAliumSurvey(currentScreen, customerVariables);
  }

  static void configure(String url) {
    AliumSdkPlatform.instance.configure(url);
  }
}
