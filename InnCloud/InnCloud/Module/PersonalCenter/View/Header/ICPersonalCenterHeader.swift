//
//  ICPersonalCenterHeader.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/21.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICPersonalCenterHeader: ICView {

    
    static func personalCenterHeader() -> ICPersonalCenterHeader {
        let personalCenterHeader = Bundle.main.loadNibNamed("ICPersonalCenterHeader", owner: nil, options: nil)?.last  as! ICPersonalCenterHeader
        
        return personalCenterHeader
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
