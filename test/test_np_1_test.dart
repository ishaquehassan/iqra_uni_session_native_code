import 'package:flutter_test/flutter_test.dart';
import 'package:test_np_1/test_np_1.dart';
import 'package:test_np_1/test_np_1_platform_interface.dart';
import 'package:test_np_1/test_np_1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTestNp_1Platform
    with MockPlatformInterfaceMixin
    implements TestNp_1Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TestNp_1Platform initialPlatform = TestNp_1Platform.instance;

  test('$MethodChannelTestNp_1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTestNp_1>());
  });

  test('getPlatformVersion', () async {
    TestNp_1 testNp_1Plugin = TestNp_1();
    MockTestNp_1Platform fakePlatform = MockTestNp_1Platform();
    TestNp_1Platform.instance = fakePlatform;

    expect(await testNp_1Plugin.getPlatformVersion(), '42');
  });
}
