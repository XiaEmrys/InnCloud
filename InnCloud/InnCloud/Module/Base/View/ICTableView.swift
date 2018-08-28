//
//  ICTableView.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/15.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTableView: UITableView {

    var listDataSource: ICListDataSource?
    
    private var didSlectedCellClosures: ((_ indexPath: NSIndexPath)->())?
    private var viewForSectionHeader: ((_ indexPath: NSIndexPath)->())?
    
    convenience init(frame: CGRect, style: UITableViewStyle, listDataSource: ICListDataSource) {
        self.init(frame: frame, style: style)
        
        self.listDataSource = listDataSource
        self.separatorStyle = .none
        
        dataSource = self
        delegate = self
    }
    
    convenience init(frame: CGRect, listDataSource: ICListDataSource) {
        self.init(frame: frame, style: .plain, listDataSource: listDataSource)
    }

    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        return nil
//    }
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        return nil
//    }
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
