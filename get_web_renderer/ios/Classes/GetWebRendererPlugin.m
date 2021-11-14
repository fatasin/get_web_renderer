#import "GetWebRendererPlugin.h"
#if __has_include(<get_web_renderer/get_web_renderer-Swift.h>)
#import <get_web_renderer/get_web_renderer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "get_web_renderer-Swift.h"
#endif

@implementation GetWebRendererPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetWebRendererPlugin registerWithRegistrar:registrar];
}
@end
