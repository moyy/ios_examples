//
//  AppDelegate.swift
//  s01_hello_ios_swift
//
//  Created by yu on 2024/1/26.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // 类似 Andriod Activity 的 onCreate()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let f: (Int, Int) -> Bool = add(_:b:)
        
        // 创建窗口
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // 创建视图控制器
        let viewController = ViewController()
        
        // 设置根视图控制器
        window?.rootViewController = viewController

        // 显示窗口
        window?.makeKeyAndVisible()
        
        return true
    }
}

func add(_ a: Int, b bb: Int) -> Bool {
    return true;
}

func add(a aa: Int, b bb: Int) -> Bool {
    return true;
}
