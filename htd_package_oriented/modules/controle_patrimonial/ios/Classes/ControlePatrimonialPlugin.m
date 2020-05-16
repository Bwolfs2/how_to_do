#import "ControlePatrimonialPlugin.h"
#if __has_include(<controle_patrimonial/controle_patrimonial-Swift.h>)
#import <controle_patrimonial/controle_patrimonial-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "controle_patrimonial-Swift.h"
#endif

@implementation ControlePatrimonialPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftControlePatrimonialPlugin registerWithRegistrar:registrar];
}
@end
