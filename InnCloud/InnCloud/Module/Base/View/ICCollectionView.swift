//
//  ICCollectionView.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/14.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICCollectionView: UICollectionView {
    
    var listDataSource: ICListDataSource? {
        didSet {
            dataSource = self
            delegate = self
        }
    }

    private var didSlectedCellClosures: ((_ indexPath: NSIndexPath)->())?
    
    static func collectionView(frame: CGRect, layout: UICollectionViewLayout, listDataSource: ICListDataSource) -> ICCollectionView {
        let collectionView = ICCollectionView(frame: frame, collectionViewLayout: layout)
        collectionView.listDataSource = listDataSource
        
        return collectionView
    }
    
    // MARK: - Method
    func reuseIdentifierForCell() -> String {
        return ICCollectionViewCell.identifierForCell()
    }
    
    func didSelectedCell(operation: @escaping (_ indexPath: NSIndexPath)->()) -> () {
        
        didSlectedCellClosures = operation
    }
}

extension ICCollectionView: UICollectionViewDataSource, UICollectionViewDelegate {
    // MARK: - UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let _: (_ indexPath: NSIndexPath)->() = didSlectedCellClosures {
            didSlectedCellClosures!(indexPath as NSIndexPath)
        }
    }
    // MARK: - UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if let _ = listDataSource {
            return listDataSource!.sectionSource.count
        } else {
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let _ = listDataSource {
            
            let items = listDataSource!.sectionSource[section]
            
            if items.count > 0 {
                return items.count
            } else {
                return 0
            }
        } else {
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell: ICCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierForCell(), for: indexPath) as? ICCollectionViewCell {
            let items = listDataSource!.sectionSource[indexPath.section]
            cell.cellModel = items[indexPath.row]
            return cell
        } else {
            return ICCollectionViewCell()
        }
    }
}
