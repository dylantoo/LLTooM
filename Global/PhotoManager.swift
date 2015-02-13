//
//  PhotoManager.swift
//  LLTooM
//
//  Created by Huang.Peng on 15/2/12.
//  Copyright (c) 2015年 N_A_S. All rights reserved.
//

import UIKit

class PhotoManager: NSObject {
   
    // 获取总共照片张数
    func numberOfPhotos() -> NSInteger {
        return 15;
    }
    
    // 获取对应的image
    func imageAtIndexInPhotos(currentImageIndex index : Int) -> UIImage {
        return UIImage(named: "baby")!
    }
    
    // 获取下拉展示内容
    func headTitleForPhotoGallery() -> NSString {
        return "怂"
    }
    
}
