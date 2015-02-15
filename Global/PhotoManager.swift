//
//  PhotoManager.swift
//  LLTooM
//
//  Created by Huang.Peng on 15/2/12.
//  Copyright (c) 2015年 N_A_S. All rights reserved.
//

import UIKit
import Foundation

class PhotoManager: NSObject {
   
    // 获取总共照片张数
    class func numberOfPhotos() -> NSInteger {
        return 15;
    }
    
    // 获取对应的image
    class func imageAtIndexInPhotos(currentImageIndex index : Int) -> UIImage {
        return UIImage(named: "baby")!
    }
    
    // 获取下拉展示内容
    class func headTitleForPhotoGallery() -> NSString {
        
        var beginString:NSString = "2014-01-01 00:00"
        var beginDate:NSDate = beginString.dateFromFormateString("")
        var interval:NSTimeInterval = NSDate().timeIntervalSinceDate(beginDate)

        
        var gregorian:NSCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)!
        
        var unitFlags:NSCalendarUnit = NSCalendarUnit(UInt.max)
        var beginComponents:NSDateComponents = gregorian.components(unitFlags, fromDate: beginDate)
        var endComponents:NSDateComponents = gregorian.components(unitFlags, fromDate: NSDate())
        
        var begin_year:Int = beginComponents.year
        var begin_month:Int = beginComponents.month
        var begin_day:Int = beginComponents.day
        var begin_hour:Int = beginComponents.hour
        var begin_min:Int = beginComponents.minute
        var begin_sec:Int = beginComponents.second

        var end_year:Int = endComponents.year
        var end_month:Int = endComponents.month
        var end_day:Int = endComponents.day
        var end_hour:Int = endComponents.hour
        var end_min:Int = endComponents.minute
        var end_sec:Int = endComponents.second
      
        return "Passed \(end_year-begin_year)Year \(end_month-begin_month)Month \(end_day-begin_day)Day \(end_hour-begin_hour)Hour \(end_min-begin_min)Min \(end_sec-begin_sec)Sec "
    }
    
}
