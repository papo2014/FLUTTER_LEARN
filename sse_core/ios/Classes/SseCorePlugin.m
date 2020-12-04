#import "SseCorePlugin.h"
#if __has_include(<sse_core/sse_core-Swift.h>)
#import <sse_core/sse_core-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sse_core-Swift.h"
#endif

@implementation SseCorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSseCorePlugin registerWithRegistrar:registrar];
}
@end
