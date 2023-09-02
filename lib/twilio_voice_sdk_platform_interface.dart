import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'twilio_voice_sdk_method_channel.dart';

abstract class TwilioVoiceSdkPlatform extends PlatformInterface {
  /// Constructs a TwilioVoiceSdkPlatform.
  TwilioVoiceSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static TwilioVoiceSdkPlatform _instance = MethodChannelTwilioVoiceSdk();

  /// The default instance of [TwilioVoiceSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelTwilioVoiceSdk].
  static TwilioVoiceSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TwilioVoiceSdkPlatform] when
  /// they register themselves.
  static set instance(TwilioVoiceSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
