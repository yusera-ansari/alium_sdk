import 'dart:async';

import 'package:flutter/services.dart';

class Alium {
  static const MethodChannel _channel = const MethodChannel('alium_sdk');

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

  static Future<void> stop(String screenName)async{
 if (screenName.trim().isEmpty) {
      return;
    }
    print("stop calles ${screenName}");
    await _channel.invokeMethod('stop', <String, String>{"screen": screenName});
  }
}
