//
//  ViewControllerDirect.swift
//  InfiniteScrollView
//
//  Created by Alex Bechmann on 06/02/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

class ViewControllerDirect: UIViewController, ABInfiniteScrollViewDelegate {

    var scrollView : ABInfiniteScrollView? = nil
    var i = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView = ABInfiniteScrollView(frame: self.view.bounds)
        scrollView?.infinteScrollDelegate = self
        self.view.addSubview(scrollView!)
        
    }
    
    func infiniteScrollViewDidScroll(direction: ABInfiniteScrollDirection) {
        for view in scrollView!.views{
            //do what you want with hidden views
        }
        direction == .Left ? i-- : i++
    }
    
    func infiniteScrollViewNewView(frame:CGRect, pageFrame:CGRect) -> UIView {
        var rc = UIView(frame: frame)
        var label = UILabel(frame:pageFrame)
        label.backgroundColor = UIColor.yellowColor()
        label.text = String(i)
        label.textAlignment = NSTextAlignment.Center
        rc.addSubview(label)
        return rc
    }
    
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        scrollView?.onDidRotate(self.view.bounds)
    }

}
