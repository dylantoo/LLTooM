//
//  LTScrollHeadView.swift
//  LLTooM
//
//  Created by Huang.Peng on 15/2/12.
//  Copyright (c) 2015年 N_A_S. All rights reserved.
//

import UIKit

class LTScrollHeadView: UIView {

    var lblTitle:UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        lblTitle = UILabel(frame: frame)
        lblTitle.font = UIFont.systemFontOfSize(20)
        lblTitle.textColor = UIColor.redColor()
        lblTitle.text = LTRefreshHeadTitle
//        lblTitle.textAlignment = NSTextAlignmentLeft
        self.addSubview(lblTitle)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
