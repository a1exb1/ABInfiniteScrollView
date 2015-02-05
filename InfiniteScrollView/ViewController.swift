//
//  ViewController.swift
//  InfiniteScrollView
//
//  Created by Alex Bechmann on 01/02/2015.
//  Copyright (c) 2015 Alex Bechmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scrollView:InfiniteSubclassExample? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //scrollView?.setTranslatesAutoresizingMaskIntoConstraints(false)
        scrollView = InfiniteSubclassExample(frame: self.view.bounds)
        
        //scrollView.add
        
        self.view.addSubview(scrollView!)
    }

}

