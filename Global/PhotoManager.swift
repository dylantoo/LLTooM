//
//  PhotoManager.swift
//  LLTooM
//
//  Created by Huang.Peng on 15/2/12.
//  Copyright (c) 2015年 N_A_S. All rights reserved.
//

import UIKit

class PhotoManager: NSObject {
   
    func numberOfPhotos() -> NSInteger {
        return 15;
    }
    
    func imageAtIndexInPhotos(currentImageIndex index : Int) -> UIImage {
        return UIImage(named: "baby")!
    }
    
}
