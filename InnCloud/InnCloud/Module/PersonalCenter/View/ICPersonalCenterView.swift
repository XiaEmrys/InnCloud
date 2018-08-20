//
//  ICPersonalCenterView.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/20.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICPersonalCenterView: ICTableView {

    static func personalCenterView(frame: CGRect) -> ICPersonalCenterView {
        
        let personalCenterView = ICPersonalCenterView(frame: frame)
        
        personalCenterView.listDataSource = ICPersonalCenterDataSource()
        
        personalCenterView.backgroundColor = UIColor.white
        
        personalCenterView.register(UINib(nibName: "ICPersonalCenterCell", bundle: nil), forCellReuseIdentifier: ICPersonalCenterCell.identifierForCell())
        
        personalCenterView.estimatedRowHeight = 44
        personalCenterView.rowHeight = UITableViewAutomaticDimension
        
        return personalCenterView
    }
    
    override func reuseIdentifierForCell() -> String {
        return ICPersonalCenterCell.identifierForCell()
    }
}
