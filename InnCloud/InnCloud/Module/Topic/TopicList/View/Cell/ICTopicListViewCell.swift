//
//  ICTopicListViewCell.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/17.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTopicListViewCell: ICTableViewCell {

    @IBOutlet weak var topicTitleLabel: UILabel!
    @IBOutlet weak var topicInformationLabel: UILabel!
    
    override class func identifierForCell() -> String {
        return "k_topic_list_view_cell_id"
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
            if let t: ICTopicListViewCellModel = cellModel as? ICTopicListViewCellModel {
                topicTitleLabel.text = t.topicTitle
                topicInformationLabel.text = t.topicInformation
            }
        }
    }
    
}
