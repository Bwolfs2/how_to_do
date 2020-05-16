import Flutter
import UIKit

public class SwiftCompraEstoqueOnlinePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "compra_estoque_online", binaryMessenger: registrar.messenger())
    let instance = SwiftCompraEstoqueOnlinePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
