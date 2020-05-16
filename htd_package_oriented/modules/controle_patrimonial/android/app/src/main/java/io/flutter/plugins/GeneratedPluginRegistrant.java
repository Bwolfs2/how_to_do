package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import br.flutterando.controle_patrimonial.ControlePatrimonialPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    ControlePatrimonialPlugin.registerWith(registry.registrarFor("br.flutterando.controle_patrimonial.ControlePatrimonialPlugin"));
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
