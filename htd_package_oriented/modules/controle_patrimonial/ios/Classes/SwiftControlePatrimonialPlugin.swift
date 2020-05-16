import Flutter
import UIKit

public class SwiftControlePatrimonialPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "controle_patrimonial", binaryMessenger: registrar.messenger())
    let instance = SwiftControlePatrimonialPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
