//
//  UIImageView+LTCache.swift
//  LLTooM
//
//  Created by Huang.Peng on 15/2/15.
//  Copyright (c) 2015年 N_A_S. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    func printSomething() {
        NSLog("is Downloading")
    }
    
    func imageCacheForUrl(urlString:String) {
        var cache = NSCache()
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            var data:NSData? = cache.objectForKey(urlString) as? NSData
            let goodData = data
            if ((goodData) != nil) {
                let image = UIImage(data: goodData!)
                self.image = image
            }
            else {
                var downloadTask: NSURLSessionDataTask = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: urlString)!, completionHandler: {(data: NSData!, response: NSURLResponse!, error: NSError!) -> Void in
                    if (error != nil) {
                        // 放一张下载出错图片
                        return
                    }
                    
                    if data != nil {
                        let image = UIImage(data: data)
                        cache.setObject(data, forKey: urlString)
                        self.image = image
                        return
                    }
                    
                })
                downloadTask.resume()
            }
        })
    }
    
    
    func imageForUrl(urlString: String, completionHandler:(image: UIImage?, url: String) -> ()) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {()in
            var cache = NSCache()
            var data: NSData? = cache.objectForKey(urlString) as? NSData
            
            if let goodData = data {
                let image = UIImage(data: goodData)
                dispatch_async(dispatch_get_main_queue(), {() in
                    completionHandler(image: image, url: urlString)
                })
                return
            }
            
            var downloadTask: NSURLSessionDataTask = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: urlString)!, completionHandler: {(data: NSData!, response: NSURLResponse!, error: NSError!) -> Void in
                if (error != nil) {
                    completionHandler(image: nil, url: urlString)
                    return
                }
                
                if data != nil {
                    let image = UIImage(data: data)
                    cache.setObject(data, forKey: urlString)
                    dispatch_async(dispatch_get_main_queue(), {() in
                        completionHandler(image: image, url: urlString)
                    })
                    return
                }
                
            })
            downloadTask.resume()
        })
        
    }
}