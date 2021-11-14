//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <get_web_renderer/get_web_renderer_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) get_web_renderer_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "GetWebRendererPlugin");
  get_web_renderer_plugin_register_with_registrar(get_web_renderer_registrar);
}
