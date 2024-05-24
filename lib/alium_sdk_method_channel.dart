import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'alium_sdk_platform_interface.dart';

/// An implementation of [AliumSdkPlatform] that uses method channels.
class MethodChannelAliumSdk extends AliumSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('alium_sdk');

  @override
  Future<void> config(String url) async {
    await methodChannel
        .invokeMethod<void>('config', <String, String>{"url": url});
  }

  @override
  Future<void> trigger(
      String currentScreen, Map<String, String> customerVariables) async {
    await methodChannel.invokeMethod<void>('trigger', <String, dynamic>{
      "screen": currentScreen,
      "variables": customerVariables
    });
  }
}
