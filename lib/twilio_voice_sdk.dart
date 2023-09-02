
import 'twilio_voice_sdk_platform_interface.dart';

class TwilioVoiceSdk {
  Future<String?> getPlatformVersion() {
    return TwilioVoiceSdkPlatform.instance.getPlatformVersion();
  }
}
