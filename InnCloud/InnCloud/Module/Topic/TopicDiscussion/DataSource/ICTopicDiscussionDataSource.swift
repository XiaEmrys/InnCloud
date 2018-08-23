//
//  ICTopicDiscussionDataSource.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/20.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTopicDiscussionDataSource: ICListDataSource {
    
    func testMakeData() {
        
        sectionSource.append([ICTopicDiscussionCellModel]())
        
        let dataArray = NSArray(contentsOfFile: Bundle.main.path(forResource: "TopicDiscussionDataTest", ofType: "plist")!)
        sectionSource.append([ICTopicDiscussionCellModel]())
        for item in dataArray! {
            let cellModel = ICTopicDiscussionCellModel()
            
            cellModel.topicDiscussionContent = (item as! Dictionary)["topicDiscussionContent"]
            
            sectionSource[0].append(cellModel)
        }
    }
}
