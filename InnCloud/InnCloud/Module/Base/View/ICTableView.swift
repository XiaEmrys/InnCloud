//
//  ICTableView.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/15.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTableView: UITableView {

    var listDataSource: ICListDataSource? {
        didSet {
            dataSource = self
            delegate = self
        }
    }
    
    private var didSlectedCellClosures: ((_ indexPath: NSIndexPath)->())?
    
    static func tableView(frame: CGRect, listDataSource: ICListDataSource) -> ICTableView {
        let tableView = ICTableView(frame: frame, style: .plain)
        tableView.listDataSource = listDataSource
        
        return tableView
    }
    
    // MARK: - Method
    func reuseIdentifierForCell() -> String {
        return ICTableViewCell.identifierForCell()
    }
    
    func didSelectedCell(operation: @escaping (_ indexPath: NSIndexPath)->()) -> () {
        
        didSlectedCellClosures = operation
    }

}

extension ICTableView: UITableViewDataSource, UITableViewDelegate {
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let _: (_ indexPath: NSIndexPath)->() = didSlectedCellClosures {
            didSlectedCellClosures!(indexPath as NSIndexPath)
        }
    }
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        if let _ = listDataSource {
            return listDataSource!.sectionSource.count
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell: ICTableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierForCell(), for: indexPath) as? ICTableViewCell {
            let items = listDataSource!.sectionSource[indexPath.section]
            cell.cellModel = items[indexPath.row]
            return cell
        } else {
            return ICTableViewCell()
        }
    }


}
