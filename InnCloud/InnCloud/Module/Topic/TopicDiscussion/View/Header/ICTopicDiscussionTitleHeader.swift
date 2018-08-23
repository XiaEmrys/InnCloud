//
//  ICTopicDiscussionTitleHeader.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/23.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTopicDiscussionTitleHeader: ICView {
    
    static func titleHeader() -> ICTopicDiscussionTitleHeader {
        let titleHeader = Bundle.main.loadNibNamed("ICTopicDiscussionTitleHeader", owner: nil, options: nil)?.last  as! ICTopicDiscussionTitleHeader
        
        return titleHeader
    }
    
    @IBOutlet weak var titleLabel: UILabel!
}
