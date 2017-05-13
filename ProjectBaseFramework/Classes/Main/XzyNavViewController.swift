//
//  XzyNavViewController.swift
//  ProjectBaseFramework
//
//  Created by 一天 on 2017/3/1.
//  Copyright © 2017年 肖振阳. All rights reserved.
//

import UIKit

class XzyNavViewController: UINavigationController {

    
    override func viewDidLoad() {
        
        navigationBar.isHidden = true
    }
    
    /// 重新 push 方法
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        print(viewController)
        if childViewControllers.count > 0 {

        /// 只有在栈低的控制器才需要隐藏 底部 tabbar 在栈低的 childViewControllers 里面有子控制器
        if let vc = viewController as? XzyBaseViewController {

            viewController.hidesBottomBarWhenPushed = true
            
            var title = "返回"
            
            if childViewControllers.count == 1 {//首页
                title = childViewControllers.first?.title ?? "返回"
            }
 
            vc.navItem.leftBarButtonItem = UIBarButtonItem(title: title, tagrt: self, action: #selector(goPrepare),isBack:true)
        }
        
    }
        
        super.pushViewController(viewController, animated: true)
    }

   @objc private  func goPrepare()  {
        popViewController(animated: true)
    }
}
