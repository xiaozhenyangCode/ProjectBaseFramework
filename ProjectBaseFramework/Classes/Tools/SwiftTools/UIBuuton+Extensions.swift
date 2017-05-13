//
//  UIBuuton+Extensions.swift
//  ProjectBaseFramework
//
//  Created by x.z.y on 2017/5/13.
//  Copyright © 2017年 肖振阳. All rights reserved.
//

import UIKit

extension UIButton{

    
   class func xzy_textButton(title:String,fontSize:CGFloat = 16,normalColor: UIColor, highlightedColor: UIColor) -> UIButton {
    
    
        let btn  = self.init()
    
        btn.setTitle(title, for: .normal)
    
        btn.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
    
        btn.setTitleColor(normalColor, for: .normal)
    
        btn.setTitleColor(highlightedColor, for: .highlighted)
        return btn
    }

}
