package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import br.flutterando.gestao_compras.GestaoComprasPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    GestaoComprasPlugin.registerWith(registry.registrarFor("br.flutterando.gestao_compras.GestaoComprasPlugin"));
  }

  private static boolean alreadyRegisteredWith(PluginRegistry registry) {
    final String key = GeneratedPluginRegistrant.class.getCanonicalName();
    if (registry.hasPlugin(key)) {
      return true;
    }
    registry.registrarFor(key);
    return false;
  }
}
