//
//  AppDelegate.swift
//  GoChat
//
//  Created by Павел on 13.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

   // #if DEBUG
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Logger.log(from: "[Not running]", to: "[Inactive]")
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
        Logger.log(from: "[Active]", to: "[Inactive]")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        Logger.log(from: "[Inactive]", to: "[Active]")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        Logger.log(from: "[Inactive]", to: "[Background]")
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        Logger.log(from: "[Background]", to: "[Inactive]")
    }
   
    func applicationWillTerminate(_ application: UIApplication) {
        Logger.log(from: "[Background]", to: "[Not running]")
    }
  //  #endif
    
}

