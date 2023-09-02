//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <twilio_voice_sdk/twilio_voice_sdk_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) twilio_voice_sdk_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "TwilioVoiceSdkPlugin");
  twilio_voice_sdk_plugin_register_with_registrar(twilio_voice_sdk_registrar);
}
