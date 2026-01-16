import Flutter
import UIKit
import Alium

public class AliumSdkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "alium_sdk", binaryMessenger: registrar.messenger())
    let instance = AliumSdkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      let arguments  = call.arguments as? [String:Any]
      guard let arguments else{
          return
      }
      
    switch call.method {
    case "stop":
        guard let screen = arguments["screen"] as? String else {return}
        
        DispatchQueue.main.async {
            Alium.stop(on: screen)
        }
    case "trigger":
        guard
            let screen = arguments["screen"] as? String,
            let variables = arguments["variables"] as? [String:String]
        else{return}
        DispatchQueue.main.async {
            Alium.trigger(parameters: SurveyParameters(screenName: screen, customerVariables: variables))
        }
    case "config":
        guard let url = arguments["url"] as? String else{
            return
        }
        DispatchQueue.main.async {
            Alium.config(key: url)
        }
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
