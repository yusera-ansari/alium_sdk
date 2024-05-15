import 'alium_sdk_platform_interface.dart';

class AliumSdk {
  static void showSurvey(
      String currentScreen, Map<String, dynamic> customerVariables) {
    AliumSdkPlatform.instance.showSurvey(currentScreen, customerVariables);
  }

  static void configure(String url) {
    AliumSdkPlatform.instance.configure(url);
  }
}
