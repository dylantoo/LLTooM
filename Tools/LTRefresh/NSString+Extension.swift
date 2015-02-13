//
//  NSString+Extension.swift
//  LLTooM
//
//  Created by Huang.Peng on 15/2/13.
//  Copyright (c) 2015年 N_A_S. All rights reserved.
//

import Foundation

extension NSString {
    
    //根据给出的日期转换成相应的NSDate
    func dateFromFormateString(dateFormate:NSString) -> NSDate {
        var dateFormatter:NSDateFormatter = NSDateFormatter()
        var defaultFormate = "yyyy-MM-dd HH:mm"
        if !dateFormate.isEqualToString("") {
            defaultFormate = dateFormate
        }
        dateFormatter.dateFormat = defaultFormate
        return dateFormatter.dateFromString(self)!
    }
    
}