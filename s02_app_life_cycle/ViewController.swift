//
//  ViewController.swift
//  s02_app_life_cycle
//
//  Created by yu on 2024/1/26.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        LoggerWrapper.info("ViewController::viewDidLoad")
        
        // 设置视图的背景色
        view.backgroundColor = .blue
    }
}
