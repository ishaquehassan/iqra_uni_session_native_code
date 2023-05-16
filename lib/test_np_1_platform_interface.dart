import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'test_np_1_method_channel.dart';

abstract class TestNp_1Platform extends PlatformInterface {
  /// Constructs a TestNp_1Platform.
  TestNp_1Platform() : super(token: _token);

  static final Object _token = Object();

  static TestNp_1Platform _instance = MethodChannelTestNp_1();

  /// The default instance of [TestNp_1Platform] to use.
  ///
  /// Defaults to [MethodChannelTestNp_1].
  static TestNp_1Platform get instance => _instance;


  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> toast(String message) {
    throw UnimplementedError('toast() has not been implemented.');
  }
}
