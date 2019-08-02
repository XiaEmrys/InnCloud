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
        topicDiscussionView.rowHeight = UITableView.automaticDimension
        
        let titleHeader = ICTopicDiscussionTitleHeader.titleHeader()
        
        if 0 == arc4random_uniform(2) {
            titleHeader.titleLabel.text = "长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题长标题"
        } else {
            titleHeader.titleLabel.text = "短标题"
        }
        
        topicDiscussionView.tableHeaderView = titleHeader
        
        return topicDiscussionView
    }

    override func reuseIdentifierForCell() -> String {
        return ICTopicDiscussionCell.identifierForCell()
    }

}
