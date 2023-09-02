import 'package:flutter_test/flutter_test.dart';
import 'package:twilio_voice_sdk/twilio_voice_sdk.dart';
import 'package:twilio_voice_sdk/twilio_voice_sdk_platform_interface.dart';
import 'package:twilio_voice_sdk/twilio_voice_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTwilioVoiceSdkPlatform
    with MockPlatformInterfaceMixin
    implements TwilioVoiceSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TwilioVoiceSdkPlatform initialPlatform = TwilioVoiceSdkPlatform.instance;

  test('$MethodChannelTwilioVoiceSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTwilioVoiceSdk>());
  });

  test('getPlatformVersion', () async {
    TwilioVoiceSdk twilioVoiceSdkPlugin = TwilioVoiceSdk();
    MockTwilioVoiceSdkPlatform fakePlatform = MockTwilioVoiceSdkPlatform();
    TwilioVoiceSdkPlatform.instance = fakePlatform;

    expect(await twilioVoiceSdkPlugin.getPlatformVersion(), '42');
  });
}
