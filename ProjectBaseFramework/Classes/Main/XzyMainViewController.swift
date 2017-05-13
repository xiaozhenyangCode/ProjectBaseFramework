//
//  XzyMainViewController.swift
//  ProjectBaseFramework
//
//  Created by 一天 on 2017/3/1.
//  Copyright © 2017年 肖振阳. All rights reserved.
//

import UIKit
class XzyMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

       addChildControllers()
    
    }

    /// portrait 竖屏 : 肖像
    /// landscape 横屏 : 风景画
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
    
        return .portrait
    }
}

// MARK: - UITabBarControllerDelegate
extension XzyMainViewController:UITabBarControllerDelegate{
    
    /// 将要选择 TabBarItem
    ///
    /// - parameter tabBarController: tabBarController
    /// - parameter viewController:   目标控制器
    ///
    /// - returns: 是否切换到目标控制器
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
    
        // 判断目标控制器是否是 UIViewController
        return !viewController.isMember(of: UIViewController.self)
    }

    
}
extension XzyMainViewController{


    func addChildControllers() {
        
        
        let array = [
            ["clsName":"XzyHomeViewController","title":"首页"],
            ["clsName":"XzyClassificationController","title":"分类"],
            ["clsName":"XzyDiscoverViewController","title":"发现"],
            ["clsName":"XzyMineViewController","title":"我的"],
            ]
        
        var arrayM = [UIViewController]()
        
        for dict in array {
            
            arrayM.append(setUpChildControllers(dict: dict))
        }
        
        viewControllers = arrayM
    }
    
    
    func setUpChildControllers(dict:[String:String]) -> UIViewController {
        
        guard let clsName = dict["clsName"],
            let title = dict["title"],
            let cls = NSClassFromString(Bundle.main.namespace + "." + clsName) as? UIViewController.Type
            
            else{
                
                return UIViewController()
        }
        
        let vc = cls.init()
        
        vc.title = title
        vc.tabBarItem.setTitleTextAttributes(
            [NSForegroundColorAttributeName: UIColor.orange],
            for: .highlighted)
        vc.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 12)], for: .normal)
        
        return XzyNavViewController(rootViewController: vc)
    }
    

}
