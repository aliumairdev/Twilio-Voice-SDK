import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'twilio_voice_sdk_platform_interface.dart';

/// An implementation of [TwilioVoiceSdkPlatform] that uses method channels.
class MethodChannelTwilioVoiceSdk extends TwilioVoiceSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('twilio_voice_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
