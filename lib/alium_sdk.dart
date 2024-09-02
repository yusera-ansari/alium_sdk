import 'dart:async';

import 'package:flutter/services.dart';

class Alium {
  static const MethodChannel _channel = const MethodChannel('alium_sdk');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<void> config(String url) async {
    await _channel.invokeMethod<void>('config', <String, String>{"url": url});
  }

  static Future<void> trigger(String currentScreen,
      [Map<String, String> customerVariables]) async {
    await _channel.invokeMethod<void>('trigger', <String, dynamic>{
      "screen": currentScreen,
      "variables": customerVariables
    });
  }
}
