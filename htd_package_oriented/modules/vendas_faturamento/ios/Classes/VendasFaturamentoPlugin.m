#import "VendasFaturamentoPlugin.h"
#if __has_include(<vendas_faturamento/vendas_faturamento-Swift.h>)
#import <vendas_faturamento/vendas_faturamento-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vendas_faturamento-Swift.h"
#endif

@implementation VendasFaturamentoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVendasFaturamentoPlugin registerWithRegistrar:registrar];
}
@end
