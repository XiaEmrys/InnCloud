//
//  ICTopicDiscussionView.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/20.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTopicDiscussionView: ICTableView {

    static func topicDiscussionView(frame: CGRect) -> ICTopicDiscussionView {
        
        let topicDiscussionView = ICTopicDiscussionView(frame: frame, listDataSource: ICTopicDiscussionDataSource())
        
//        topicDiscussionView.listDataSource = ICTopicDiscussionDataSource()
        
        topicDiscussionView.backgroundColor = UIColor.white
        
        topicDiscussionView.register(UINib(nibName: "ICTopicDiscussionCell", bundle: nil), forCellReuseIdentifier: ICTopicDiscussionCell.identifierForCell())
        
        topicDiscussionView.estimatedRowHeight = 44
        topicDiscussionView.rowHeight = UITableViewAutomaticDimension
        
        return topicDiscussionView
    }

    override func reuseIdentifierForCell() -> String {
        return ICTopicDiscussionCell.identifierForCell()
    }

}
