import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'alium_sdk_method_channel.dart';

abstract class AliumSdkPlatform extends PlatformInterface {
  /// Constructs a AliumSdkPlatform.
  AliumSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static AliumSdkPlatform _instance = MethodChannelAliumSdk();

  /// The default instance of [AliumSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelAliumSdk].
  static AliumSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AliumSdkPlatform] when
  /// they register themselves.
  static set instance(AliumSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> configure(String url) {
    throw UnimplementedError('configure() has not been implemented');
  }

  Future<void> showSurvey(
      String currentScreen, Map<String, dynamic> customerVariables) {
    throw UnimplementedError('showSurvey() has not been implemented');
  }
}
