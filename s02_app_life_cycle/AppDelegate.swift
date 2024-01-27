//
//  AppDelegate.swift
//  s02_app_life_cycle
//
//  Created by yu on 2024/1/26.
//

import UIKit

@main // 注解: App入口
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // 类似 Andriod Activity 的 onCreate()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        LoggerWrapper.info("Hello_iOS_Swift: AppDelegate::didFinishLaunchingWithOptions, App 初始化");
        
        // 创建窗口
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // 创建视图控制器
        let viewController = ViewController() // 确保您有一个名为ViewController的类
        
        // 设置根视图控制器
        window?.rootViewController = viewController

        // 显示窗口
        window?.makeKeyAndVisible()
        
        return true
    }

    // 应用即将进入非活跃状态：来电 / 锁屏 / 切换其他应用，失去焦点
    // 类似 Android Activity 的 onPause()
    // 暂停 游戏 / 任务、禁用定时器，减少其他消耗CPU的操作
    func applicationWillResignActive(_ application: UIApplication) {
        LoggerWrapper.info("Hello_iOS_Swift: AppDelegate::applicationWillResignActive, App 不激活");
    }

    // 应用 已进入后台 运行
    // 类似 Android Activity 的 onStop()
    // 释放共享资源、保存用户数据、使定时器失效，并存储足够的应用程序状态信息以便于稍后可以恢复当前状态。
    // 减少内存使用，因为在后台运行的应用程序更容易被系统终止。
    func applicationDidEnterBackground(_ application: UIApplication) {
        LoggerWrapper.info("Hello_iOS_Swift: AppDelegate::applicationDidEnterBackground, App 切换到 后台");
    }
    
    // 应用即将从后台返回到前台
    // 类似 Android Activity 的 onRestart()
    func applicationWillEnterForeground(_ application: UIApplication) {
        LoggerWrapper.info("Hello_iOS_Swift: AppDelegate::applicationWillEnterForeground, App 切换到 前台");
    }
    

    // 应用 从 非活跃状态 变为活跃状态
    // 在这里 重启 在applicationWillResignActive(_:)方法中被暂停（或尚未开始）的 任务
    // 类似 Android Activity 的 onResume()
    func applicationDidBecomeActive(_ application: UIApplication) {
        LoggerWrapper.info("Hello_iOS_Swift: AppDelegate::applicationDidBecomeActive, App 激活");
    }
    
    // 应用即将关闭
    // 类似 Android Activity 的 onDestroy()
    func applicationWillTerminate(_ application: UIApplication) {
        LoggerWrapper.info("Hello_iOS_Swift: AppDelegate::applicationWillTerminate, App 准备关闭");
    }
}
