//
//  Functions.swift
//  MyLocations
//
//  Created by Atikur Rahman on 12/31/14.
//  Copyright (c) 2014 Atikur Rahman. All rights reserved.
//

import Foundation
import Dispatch

// run the closure after delay of certain seconds
func afterDelay(seconds: Double, closure: () -> ()) {
    let when = dispatch_time(DISPATCH_TIME_NOW, Int64(seconds * Double(NSEC_PER_SEC)))
    
    dispatch_after(when, dispatch_get_main_queue(), closure)
}
