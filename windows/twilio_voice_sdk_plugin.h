#ifndef FLUTTER_PLUGIN_TWILIO_VOICE_SDK_PLUGIN_H_
#define FLUTTER_PLUGIN_TWILIO_VOICE_SDK_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace twilio_voice_sdk {

class TwilioVoiceSdkPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  TwilioVoiceSdkPlugin();

  virtual ~TwilioVoiceSdkPlugin();

  // Disallow copy and assign.
  TwilioVoiceSdkPlugin(const TwilioVoiceSdkPlugin&) = delete;
  TwilioVoiceSdkPlugin& operator=(const TwilioVoiceSdkPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace twilio_voice_sdk

#endif  // FLUTTER_PLUGIN_TWILIO_VOICE_SDK_PLUGIN_H_
