//
//  ICInnListView.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/14.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICInnListView: ICCollectionView {
    
    static func innListView(frame: CGRect) -> ICInnListView {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.size.width/2 - 15, height: 150);
        
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        layout.scrollDirection = .vertical
        
        let innListView = ICInnListView(frame: frame, collectionViewLayout: layout)
        
        innListView.listDataSource = ICInnListDataSource()
        
        innListView.backgroundColor = UIColor.white
        
        innListView.register(UINib.init(nibName: "ICInnListViewCell", bundle: nil), forCellWithReuseIdentifier: ICInnListViewCell.identifierForCell())
        
        return innListView
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func reuseIdentifierForCell() -> String {
        return ICInnListViewCell.identifierForCell()
    }

}
