#import "CrmPlugin.h"
#if __has_include(<crm/crm-Swift.h>)
#import <crm/crm-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "crm-Swift.h"
#endif

@implementation CrmPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCrmPlugin registerWithRegistrar:registrar];
}
@end
