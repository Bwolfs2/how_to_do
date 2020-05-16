package io.flutter.plugins;

import io.flutter.plugin.common.PluginRegistry;
import br.flutterando.gestao_projetos.GestaoProjetosPlugin;

/**
 * Generated file. Do not edit.
 */
public final class GeneratedPluginRegistrant {
  public static void registerWith(PluginRegistry registry) {
    if (alreadyRegisteredWith(registry)) {
      return;
    }
    GestaoProjetosPlugin.registerWith(registry.registrarFor("br.flutterando.gestao_projetos.GestaoProjetosPlugin"));
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
