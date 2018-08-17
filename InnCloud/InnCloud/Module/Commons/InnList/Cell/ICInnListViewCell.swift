//
//  ICInnListViewCell.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/14.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICInnListViewCell: ICCollectionViewCell {

    @IBOutlet weak var innTitleLabel: UILabel!
    @IBOutlet weak var innTitleImageView: UIImageView!
    
    override class func identifierForCell() -> String {
        return "k_inn_list_view_cell_id"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var cellModel: ICViewModel? {
        didSet {
            if let t: ICInnListCellModel = cellModel as? ICInnListCellModel {
                innTitleLabel.text = t.innTitle
                innTitleImageView.image = UIImage(named: t.innImageName!)
            }
        }
    }

}
