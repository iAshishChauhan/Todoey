//
//  AppDelegate.swift
//  Todoey
//
//  Created by Ashish Singh Chauhan on 05/11/18.
//  Copyright © 2018 Ashish Singh Chauhan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // This method is called when the app gets loaded up. -> this is the first thing that happens when we open app.
        //print("didFinishLaunchingWithOptions")
        
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // This method runs in background and handles everything to save data. eg- while receiving a call it persists the data.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationDidEnterBackground")
        //This happens when app disappears off the screen. Like when home button pressed.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        //called when application is made to force quit.
        print("applicationWillTerminate")
    }


}

