# 01. 最小 iOS Swift Demo

绕过 Storyboard，全代码开发 iOS 最简单应用

演示：iPhone 打开应用，黄色全屏

# 1. 开发流程

## 1.1. 创建空项目

+ Xcode 菜单: File --> New --> Project
+ Other 标签页 --> Empty
+ 输入 项目名

## 1.2. 创建目标

+ 打开 项目
+ Xcode 菜单: File --> New --> Target
+ iOS 标签页 --> App
    - 输入 目标名
    - Interface 选 Storyboard
    - Language 选 Swift

## 1.3. 精简 目标配置

+ Xcode，点击项目，选 General / Deployment Info / Supports multiple windows
    - 将 `Main storyboard file base name` 的 内容 去掉
    - 将 `Launch screen interface file base name` 的 内容 去掉
+ Xcode，删掉 Main.storyboard, LaunchScreen.storyboard, Assets.xcassets, SceneDelegate.swift
+ Xcode，移除 Info.plist 中所有的选项

## 1.4. 入口 main.swift

Xcode: File --> New --> File, 新建文件 main.swift

```swift
import UIKit // iOS 的 UI framework

// 或者是 UIApplication ， 或者是 它的子类名; 
// 为 nil 则是 UIApplication
let uiAppClassName = nil

// 应用代理类的名字
// 或者是 UIApplicationDelegate ，或者是 它的 子类名；
// （基本不会用）：为 nil，则从 main nib 文件 获取 代理名
let delegateClassName = NSStringFromClass(AppDelegate.self)

// 和 C语言的 int main(int argc, char* argv[]) 类似
let argc = CommandLine.argc
let argv = UnsafeMutablePointer(CommandLine.unsafeArgv)

UIApplicationMain(argc, argv, uiAppClassName, delegateClassName)
```

## 1.5. APP代理，负责生命周期 AppDelegate.swift

修改文件 AppDelegate.swift

``` swift
import UIKit // iOS 的 UI framework

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // 类似 Andriod Activity 的 onCreate()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
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
```

## 1.5. 视图控制器

修改文件 ViewController.swift

``` swift
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置视图的背景色
        view.backgroundColor = .yellow
    }
}
```

## 1.6. 运行

Xcode 上面 选择 目标，数据线连接 iphone 或 用 模拟器，点击 ▶️

效果：iPhone 打开应用，黄色全屏

# 2. `AppDelegate` 要点

Apple 系列OS

+ MacOS: PC
+ iOS: iPhone / iPad
+ tvOS
+ watchOS

## 2.1. UI framework

+ 传统 iOS: import `UIKit`
+ 传统 MacOS: import `Cocoa`, 其内部 重点是 `AppleKit`
+ 现代 Apple系 跨OS 应用，推荐 import `SwiftUI`
 
## 2.2. 入口: main.swift 

Swift项目，都在 UIApplicationDelegate 的子类 直接注解 `@main`来自动生成 main.swift 的 内容

## 2.3. 应用代理 UIApplicationDelegate

管理应用的生命周期，下期再详细描述；

``` swift 
// 
// 应用 启动后 调用 application(_:didFinishLaunchingWithOptions:)
// 类似 Andriod Activity 的 onCreate()
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    // 这里 创建 Window & ViewController

    return true
}
```

## 2.4. Window & ViewController

+ 创建 窗口，大小和屏幕等大
    - let frame = UIScreen.main.bounds
    - let window = UIWindow(frame: frame)
+ 窗口有 `根视图控制器` window.rootViewController
    - 创建 ViewController
    - 设置到 window.rootViewController
+ 窗口设置为可见：window.makeKeyAndVisible()

## 2.5. UIViewController & View

管理 视图树

+ UIViewController.view 就是 视图；
+ 在 UIViewController::viewDidLoad() 中，view 就可以用了；
+ 通过 view.addSubview() 设置子视图，形成树状结构；