import Flutter
import UIKit

public class TestNp_1Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "test_np_1", binaryMessenger: registrar.messenger())
    let instance = TestNp_1Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      switch(call.method) {
        case "getPlatformVersion":  result("iOS " + UIDevice.current.systemVersion)
      case "toast": if let vc = UIApplication.shared.delegate?.window??.rootViewController  as? FlutterViewController {
          guard let args = call.arguments else {
                  return
                }
          if let myArgs = args as? [String: String]{
              Toast.show(message: myArgs["message"]!, controller: vc)
          }
      }
        default: result(nil)
      }
  
  }
}
