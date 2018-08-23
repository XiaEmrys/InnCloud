//
//  ICPersonalCenterDataSource.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/20.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICPersonalCenterDataSource: ICListDataSource {

    func testMakeData() {
        
        sectionSource.append([ICPersonalCenterCellModel]())
        sectionSource.append([ICPersonalCenterCellModel]())
        sectionSource.append([ICPersonalCenterCellModel]())
        
        let cellModel_0 = ICPersonalCenterCellModel()
        cellModel_0.testContent = "个人资料"
        sectionSource[0].append(cellModel_0)
        
        let cellModel_1 = ICPersonalCenterCellModel()
        cellModel_1.testContent = "最近浏览"
        sectionSource[1].append(cellModel_1)
        let cellModel_2 = ICPersonalCenterCellModel()
        cellModel_2.testContent = "特别关注"
        sectionSource[1].append(cellModel_2)
        let cellModel_3 = ICPersonalCenterCellModel()
        cellModel_3.testContent = "标签"
        sectionSource[1].append(cellModel_3)
        let cellModel_4 = ICPersonalCenterCellModel()
        cellModel_4.testContent = "点赞的帖子"
        sectionSource[1].append(cellModel_4)
        let cellModel_5 = ICPersonalCenterCellModel()
        cellModel_5.testContent = "评论的帖子"
        sectionSource[1].append(cellModel_5)
        let cellModel_6 = ICPersonalCenterCellModel()
        cellModel_6.testContent = "其他"
        sectionSource[1].append(cellModel_6)
        
        let cellModel_7 = ICPersonalCenterCellModel()
        cellModel_7.testContent = "关于"
        sectionSource[2].append(cellModel_7)
        let cellModel_8 = ICPersonalCenterCellModel()
        cellModel_8.testContent = "帮助"
        sectionSource[2].append(cellModel_8)
        let cellModel_9 = ICPersonalCenterCellModel()
        cellModel_9.testContent = "设置"
        sectionSource[2].append(cellModel_9)
        
    }
}
