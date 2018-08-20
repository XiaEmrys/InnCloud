//
//  ICTopicDiscussionCell.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/20.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTopicDiscussionCell: ICTableViewCell {

    @IBOutlet weak var topicDiscussionContentLabel: UILabel!
    
    override class func identifierForCell() -> String {
        return "k_topic_discussion_view_cell_id"
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
            if let t: ICTopicDiscussionCellModel = cellModel as? ICTopicDiscussionCellModel {
                topicDiscussionContentLabel.text = t.topicDiscussionContent
            }
        }
    }
}
