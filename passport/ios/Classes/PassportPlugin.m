#import "PassportPlugin.h"
#if __has_include(<passport/passport-Swift.h>)
#import <passport/passport-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "passport-Swift.h"
#endif

@implementation PassportPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPassportPlugin registerWithRegistrar:registrar];
}
@end
