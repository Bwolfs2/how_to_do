#import "CompraEstoqueOnlinePlugin.h"
#if __has_include(<compra_estoque_online/compra_estoque_online-Swift.h>)
#import <compra_estoque_online/compra_estoque_online-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "compra_estoque_online-Swift.h"
#endif

@implementation CompraEstoqueOnlinePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCompraEstoqueOnlinePlugin registerWithRegistrar:registrar];
}
@end
