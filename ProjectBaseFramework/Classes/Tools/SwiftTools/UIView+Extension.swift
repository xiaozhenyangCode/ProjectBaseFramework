//
//  UIView+Extension.swift
//  ProjectBaseFramework
//
//  Created by x.z.y on 2017/3/13.
//  Copyright © 2017年 肖振阳. All rights reserved.
//

import UIKit

extension UIView{
    
    var xzy_x: CGFloat{
        
        get{
            return frame.origin.x
            
        }
        set(newVal){
            
            var tempFrame: CGRect = frame
            tempFrame.origin.x    = newVal
            frame                 = tempFrame
        }
        
    }
    var xzy_y: CGFloat{
        
        get{
            return frame.origin.y
            
        }
        set(newVal){
            
            var tempFrame: CGRect = frame
            tempFrame.origin.y    = newVal
            frame                 = tempFrame
        }
        
    }
    var xzy_w: CGFloat{
        
        get{
            return frame.size.width
            
        }
        set(newVal){
            
            var tempFrame: CGRect = frame
            tempFrame.size.width   = newVal
            frame                 = tempFrame
        }
    }
    var xzy_h: CGFloat{
        
        get{
            return frame.size.height
            
        }
        set(newVal){
            
            var tempFrame: CGRect = frame
            tempFrame.size.height   = newVal
            frame                 = tempFrame
        }
    }
    var xzy_size: CGSize{
        
        get{
            return frame.size
            
        }
        set(newVal){
            
            var tempFrame: CGRect = frame
            tempFrame.size        = newVal
            frame                 = tempFrame
        }
        
    }
    var xzy_origin: CGPoint{
        
        get{
            return frame.origin
            
        }
        set(newVal){
            
            var tempFrame: CGRect = frame
            tempFrame.origin      = newVal
            frame                 = tempFrame
        }
        
    }
    var xzy_rightX: CGFloat{
        
        get{
            return frame.origin.x + bounds.size.width
            
        }
        set(newVal){
            
            var tempFrame: CGRect = frame
            tempFrame.origin.x    = newVal - frame.size.width
            frame                 = tempFrame
        }
        
    }
    var xzy_bottomY: CGFloat{
        
        get{
            return frame.origin.y + bounds.size.height
            
        }
        set(newVal){
            
            var tempFrame: CGRect = frame
            tempFrame.origin.y    = newVal - frame.size.height
            frame                 = tempFrame
        }
        
    }
    
    /// 返回当前view所在的控制器
    ///
    /// - Returns: 返回当前view所在的控制器
    func viewcontroller() -> UIViewController {
        
        if let nextResponder = next?.next, nextResponder.isKind(of: UIViewController.self){
            
            if nextResponder is UIViewController {
                return nextResponder as! UIViewController
            }
            return UIViewController()
        }
        return UIViewController()
    }
}
