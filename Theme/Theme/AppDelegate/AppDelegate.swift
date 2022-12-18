//
//  AppDelegate.swift
//  Theme
//
//  Created by Raj Anand on 18/12/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    /// Added window with frame of UIScreen
    /// Added navigation controller as window root view controller
    /// Added landing view controller as navigation root view controller
    window = UIWindow(frame: UIScreen.main.bounds)
    
    let homeViewController = HomeViewController()
    
    window?.rootViewController = UINavigationController(rootViewController: homeViewController)
    window?.makeKeyAndVisible()
    
    return true
  }

}

