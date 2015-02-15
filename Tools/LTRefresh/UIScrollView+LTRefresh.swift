//
//  UIScrollView+LTRefresh.swift
//  LLTooM
//
//  Created by Huang.Peng on 15/2/13.
//  Copyright (c) 2015年 N_A_S. All rights reserved.
//

import UIKit

extension UIScrollView {
    func addLTHeadRefreshView() {
        var headview = LTScrollHeadView(frame: CGRectMake(0, -22, self.frame.size.width, LTRefreshViewHeight))
        self.addSubview(headview)
    }
    
    func updateLTHeadRefreshViewTitle(headviewTitle title:NSString) {
        for object:AnyObject in self.subviews {
            if(object is LTScrollHeadView) {
                var hView = object as LTScrollHeadView
                hView.lblTitle.text = title
            }
        }
    }
}

