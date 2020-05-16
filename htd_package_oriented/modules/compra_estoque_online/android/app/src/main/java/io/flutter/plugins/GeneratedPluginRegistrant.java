package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import br.flutterando.compra_estoque_online.CompraEstoqueOnlinePlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    CompraEstoqueOnlinePlugin.registerWith(registry.registrarFor("br.flutterando.compra_estoque_online.CompraEstoqueOnlinePlugin"));
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
