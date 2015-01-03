//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by Atikur Rahman on 1/4/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func childViewControllerForStatusBarStyle() -> UIViewController? {
        return nil
    }

}
