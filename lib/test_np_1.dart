
import 'test_np_1_platform_interface.dart';

class TestNp_1 {
  Future<String?> getPlatformVersion() {
    return TestNp_1Platform.instance.getPlatformVersion();
  }

  Future<void> toast(String message) async{
    return TestNp_1Platform.instance.toast(message);
  }
}
