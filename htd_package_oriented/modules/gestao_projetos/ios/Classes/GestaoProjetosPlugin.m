#import "GestaoProjetosPlugin.h"
#if __has_include(<gestao_projetos/gestao_projetos-Swift.h>)
#import <gestao_projetos/gestao_projetos-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "gestao_projetos-Swift.h"
#endif

@implementation GestaoProjetosPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGestaoProjetosPlugin registerWithRegistrar:registrar];
}
@end
