import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_np_1/test_np_1_method_channel.dart';

void main() {
  MethodChannelTestNp_1 platform = MethodChannelTestNp_1();
  const MethodChannel channel = MethodChannel('test_np_1');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
