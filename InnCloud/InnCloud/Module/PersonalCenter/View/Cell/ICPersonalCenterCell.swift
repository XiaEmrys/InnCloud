//
//  ICPersonalCenterCell.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/20.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICPersonalCenterCell: ICTableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    
    override class func identifierForCell() -> String {
        return "k_personal_center_view_cell_id"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override var cellModel: ICViewModel? {
        didSet {
            if let t: ICPersonalCenterCellModel = cellModel as? ICPersonalCenterCellModel {
                contentLabel.text = t.testContent
            }
        }
    }
}
