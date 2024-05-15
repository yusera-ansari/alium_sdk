import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'alium_sdk_platform_interface.dart';

/// An implementation of [AliumSdkPlatform] that uses method channels.
class MethodChannelAliumSdk extends AliumSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('alium_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
