//
//  AppDelegate.swift
//  AgumentedDemo
//
//  Created by vivek.kapoor on 2/8/18.
//  Copyright © 2018 a1Technology. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
//vivek dev branch
    var window: UIWindow?
    static var shared:AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    func testMethod() {
        //This method need to be merged in master
    }
    
    func testing()
    {
       //Ankush
        //testing mthod
    }
    
}

extension AppDelegate : UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
    }
}
