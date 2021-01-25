//
//  AppDelegate.swift
//  Foursquare iOS Client App
//
//  Created by Muhammed Karakul on 25.01.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        createWindow()
        return true
    }
    
    private func createWindow() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let initialViewController = InitialViewController()
        let navigationController = UINavigationController(rootViewController: initialViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
}

