//
//  AppDelegate.swift
//  Books
//
//  Created by Aleksandr Kazak-Kazakevich on 08.02.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    private let container = AppDependencyContainer()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let viewController = container.makeMasterViewController()
        window = UIWindow()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        return true
    }
}

