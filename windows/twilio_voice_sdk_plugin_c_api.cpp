#include "include/twilio_voice_sdk/twilio_voice_sdk_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "twilio_voice_sdk_plugin.h"

void TwilioVoiceSdkPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  twilio_voice_sdk::TwilioVoiceSdkPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
