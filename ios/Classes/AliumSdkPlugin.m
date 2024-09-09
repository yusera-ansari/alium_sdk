#import "AliumSdkPlugin.h"
#if __has_include(<alium_sdk/alium_sdk-Swift.h>)
#import <alium_sdk/alium_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "alium_sdk-Swift.h"
#endif

@implementation AliumSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAliumSdkPlugin registerWithRegistrar:registrar];
}
@end
