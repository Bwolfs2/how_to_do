#import "ControleFinanceiroPlugin.h"
#if __has_include(<controle_financeiro/controle_financeiro-Swift.h>)
#import <controle_financeiro/controle_financeiro-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "controle_financeiro-Swift.h"
#endif

@implementation ControleFinanceiroPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftControleFinanceiroPlugin registerWithRegistrar:registrar];
}
@end
