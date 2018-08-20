//
//  ICTableViewCell.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/15.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTableViewCell: UITableViewCell {

    var cellModel: ICViewModel?
    
    class func identifierForCell() -> String {
        return ""
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
}
