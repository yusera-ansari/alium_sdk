import 'package:flutter_test/flutter_test.dart';
import 'package:alium_sdk/alium_sdk.dart';
import 'package:alium_sdk/alium_sdk_platform_interface.dart';
import 'package:alium_sdk/alium_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockAliumSdkPlatform
//     with MockPlatformInterfaceMixin
//     implements AliumSdkPlatform {

//   // @override
//   // Future<String?> getPlatformVersion() => Future.value('42');
// }

void main() {
  final AliumSdkPlatform initialPlatform = AliumSdkPlatform.instance;

  test('$MethodChannelAliumSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAliumSdk>());
  });

  // test('getPlatformVersion', () async {
  //   AliumSdk aliumSdkPlugin = AliumSdk();
  //   // MockAliumSdkPlatform fakePlatform = MockAliumSdkPlatform();
  //   AliumSdkPlatform.instance = fakePlatform;

  //   expect(await aliumSdkPlugin.getPlatformVersion(), '42');
  // });
}
