//
//  NSDate-Extension.swift
//  LiveDemo
//
//  Created by tuhaisheng on 2017/6/13.
//  Copyright © 2017年 tuhaisheng. All rights reserved.
//

import UIKit

extension Date {
    static func getCurrentTime() -> String {
        let nowDate = Date()
        
        let interval = Int(nowDate.timeIntervalSince1970)
        
        return "\(interval)"
    }
}
