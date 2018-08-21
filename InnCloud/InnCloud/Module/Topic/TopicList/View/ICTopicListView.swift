//
//  ICTopicListView.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/16.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTopicListView: ICTableView {

    static func topicListView(frame: CGRect) -> ICTopicListView {
        
        let topicListView = ICTopicListView(frame: frame, listDataSource: ICTopicListDataSource())
        
//        topicListView.listDataSource = ICTopicListDataSource()
        
        topicListView.backgroundColor = UIColor.white
        
        topicListView.register(UINib(nibName: "ICTopicListViewCell", bundle: nil), forCellReuseIdentifier: ICTopicListViewCell.identifierForCell())
        
        topicListView.estimatedRowHeight = 44
        topicListView.rowHeight = UITableViewAutomaticDimension
        
        return topicListView
    }

    override func reuseIdentifierForCell() -> String {
        return ICTopicListViewCell.identifierForCell()
    }
}
