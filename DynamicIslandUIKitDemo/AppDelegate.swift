//
//  AppDelegate.swift
//  DynamicIslandUIKitDemo
//
//  Created by Zaitsev Aleksey on 04.10.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    let rootVC = MainViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        showVC()
        print("test")
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool { //Used to catch user clicks inside the Dynamic Island
        // If you use SceneDeleate, use it --> scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>)
        print("url: \(url)")
        rootVC.dynamicIslandManager.stopActivity()
        rootVC.vpnButtonUpdate() //change state button
        return true
    }
    
    private func showVC() {
        let navC = UINavigationController(rootViewController: rootVC)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = navC
    }
}
