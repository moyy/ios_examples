//
//  main.swift
//  s01_hello_ios_swift
//
//  Created by yu on 2024/1/26.
//

import UIKit // iOS 的 UI framework

// 告诉 Apple，该APP 的 Application 类是啥
// 要么是 UIApplication
// 要么是 继承 UIApplication 的类
let uiAppClassName = NSStringFromClass(UIApplication.self)

// 告诉 Apple，该APP 的 代理类 是啥
// 要么是 UIApplicationDelegate
// 要么是 继承 UIApplicationDelegate 的类
let delegateClassName = NSStringFromClass(AppDelegate.self)

// 和 C语言的 int main(int argc, char* argv[]) 类似
let argc = CommandLine.argc
let argv = UnsafeMutablePointer(CommandLine.unsafeArgv)

UIApplicationMain(argc, argv, uiAppClassName, delegateClassName)
