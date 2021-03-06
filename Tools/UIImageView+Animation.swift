//
//  UIImageView+Animation.swift
//  xin
//
//  Created by 张玺 on 15/7/12.
//  Copyright (c) 2015年 zhangxi. All rights reserved.
//

import UIKit


public extension UIImageView
{
    
    public func animation(imageNames:Array<String>,time:NSTimeInterval=0.1,`repeat`:Int=0)
    {
        var images = [UIImage]()
        
        for name in imageNames
        {
            let image = UIImage(named: name)
            images.append(image!)
        }
        self.animationImages = images
        self.animationDuration = NSTimeInterval(time * NSTimeInterval(imageNames.count))
        self.animationRepeatCount = `repeat`
        self.startAnimating()
    }
}