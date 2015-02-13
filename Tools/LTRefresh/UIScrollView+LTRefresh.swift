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
}
