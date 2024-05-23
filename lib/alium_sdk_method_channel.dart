import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'alium_sdk_platform_interface.dart';

/// An implementation of [AliumSdkPlatform] that uses method channels.
class MethodChannelAliumSdk extends AliumSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('alium_sdk');

  @override
  Future<void> configure(String url) async {
    await methodChannel
        .invokeMethod<void>('configure', <String, String>{"url": url});
  }

  @override
  Future<void> loadAliumSurvey(
      String currentScreen, Map<String, dynamic> customerVariables) async {
    await methodChannel.invokeMethod<void>('loadAliumSurvey', <String, dynamic>{
      "screen": currentScreen,
      "variables": customerVariables
    });
  }
}
