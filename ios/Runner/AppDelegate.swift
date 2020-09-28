import UIKit
import Flutter
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    MSAppCenter.start("3d13bf2f-e2ba-4e6c-8424-1f06c03ea3c9", withServices:[
      MSAnalytics.self,
      MSCrashes.self
    ])
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
