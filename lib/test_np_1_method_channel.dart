import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'test_np_1_platform_interface.dart';

/// An implementation of [TestNp_1Platform] that uses method channels.
class MethodChannelTestNp_1 extends TestNp_1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('test_np_1');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> toast(String message) async {
    await methodChannel.invokeMethod<String>('toast', {"message": message});
  }
}
