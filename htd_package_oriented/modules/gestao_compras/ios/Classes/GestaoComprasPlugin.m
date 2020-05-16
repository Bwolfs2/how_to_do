#import "GestaoComprasPlugin.h"
#if __has_include(<gestao_compras/gestao_compras-Swift.h>)
#import <gestao_compras/gestao_compras-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "gestao_compras-Swift.h"
#endif

@implementation GestaoComprasPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGestaoComprasPlugin registerWithRegistrar:registrar];
}
@end
