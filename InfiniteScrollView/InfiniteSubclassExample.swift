//
//  InfiniteSubclassExample.swift
//  InfiniteScrollView
//
//  Created by Alex Bechmann on 01/02/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

class InfiniteSubclassExample: ABInfiniteScrollView {
    
    var i = 50
    
    override func infiniteScrollViewDidScroll(direction: ABInfiniteScrollDirection) {
        for view in self.views{
            //do what you want with hidden views        
        }
        direction == .Left ? i-- : i++
    }
    
    override func infiniteScrollViewNewView(frame:CGRect, pageFrame:CGRect) -> UIView {
        var rc = UIView(frame: frame)
        rc.backgroundColor = UIColor.whiteColor()
        var label = UILabel(frame:pageFrame)
        label.text = String(i)
        label.textAlignment = NSTextAlignment.Center
        rc.addSubview(label)
        return rc
    }

}
