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
        
        
        
        //return "共\(interval)秒"
        

        var year:NSTimeInterval = interval / (365*24*60*60)
        var month:NSTimeInterval = (interval - 365*24*60*60*year)/(30*24*60*60)
        var day:NSTimeInterval = (interval-365*24*60*60*year-30*24*60*60*month)/(24*60*60)
        var hour:NSTimeInterval = (interval-365*24*60*60*year-30*24*60*60*month-24*60*60*day)/(60*60)
        var min:NSTimeInterval = (interval-365*24*60*60*year-30*24*60*60*month-24*60*60*day-60*60*hour)/60
        var second:NSTimeInterval = interval-365*24*60*60*year-30*24*60*60*month-24*60*60*day-60*60*hour-60*min
        
        return "Passed \(Int(year))Year \(Int(month))Month \(Int(day))Day \(Int(hour))Hour \(Int(min))Min \(Int(second))Sec "
        
/*        var i:NSTimeInterval = interval-year*365
        
        var mont = Int((interval-365*year)/30)
        var day:Int = Int((interval-365*year-30*mont)/24)
        var hour:Int = Int((interval-365*year-30*mont-24*day)/60)
        var min:Int = Int((interval-365*year-30*mont-24*day-60*hour)/60)
        var second:Int = Int(interval-365*year-30*mont-24*day-60*hour-60*min)
        
        return "Passed "+year+"Year "+mont+"Month "+day+"Day "+hour+"Hour "+min+"Min "+second+"Sec"
*/
    }
    
}
