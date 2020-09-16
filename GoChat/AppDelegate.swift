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

    #if DEBUG
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("Application moved from [Not running] to [Inactive]: ",#function)
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
        print("Application moved from [Active] to [Inactive]: ",#function)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("Application moved from [Inactive] to [Active]: ",#function)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Application moved from [Inactive] to [Background]: ",#function)
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("Application moved from [Background] to [Inactive]: ",#function)
    }
   
    func applicationWillTerminate(_ application: UIApplication) {
        print("Application moved from [Background] to [Not running]: ",#function)
    }
    #endif
}

