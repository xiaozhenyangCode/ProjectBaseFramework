//
//  UIBarButtonItem + Extension.swift
//  ProjectBaseFramework
//
//  Created by 一天 on 2017/3/1.
//  Copyright © 2017年 肖振阳. All rights reserved.
//

import UIKit

extension UIBarButtonItem{

    
    /// UIBarButtonItem
    ///
    /// - parameter title:    title
    /// - parameter fontSize: fontSize，默认 16 号
    /// - parameter target:   target
    /// - parameter action:   action
    /// - parameter isBack:   是否是返回按钮 如果是 加上返回箭头
    ///   - action: UIBarButtonItem
    convenience init(title:String,fontSize:CGFloat = 16,tagrt:AnyObject,action:Selector,isBack:Bool = false) {
        
        let btn:UIButton = UIButton.xzy_textButton(title: title, fontSize: fontSize, normalColor: UIColor.darkGray, highlightedColor: UIColor.orange)
        
        let imageName = "navigationbar_back_withtext"
        
        
        if isBack {
            btn.setImage(UIImage(named:imageName), for: .normal)
            btn.setImage(UIImage(named:imageName + "_highlighted"), for: .highlighted)
            btn.sizeToFit()
        }
        
        btn.addTarget(tagrt, action: action, for: .touchUpInside)
        
        self.init(customView:btn)
    }

}
