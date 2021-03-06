//
//  ICPertinentController.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/15.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICPertinentController: ICViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "关注"
        
        let innListView = ICInnListView.innListView(frame: CGRect.zero)
        
        view.addSubview(innListView)
        
        /********--TEST--*********/
        innListView.listDataSource!.sectionSource.append([ICInnListCellModel]())
        for t in 0..<3 {
            let cellModel = ICInnListCellModel()
            
            let r = arc4random_uniform(3)
            switch r {
                case 0:
                    cellModel.innImageName = "img_test_00"
                break
                case 1:
                    cellModel.innImageName = "img_test_01"
                break
                case 2:
                    cellModel.innImageName = "img_test_02"
                break
            default:
                cellModel.innImageName = "img_test_00"
            }
//            if 0 == (t%2) {
//                cellModel.innImageName = "img_test_00"
//            } else {
//                cellModel.innImageName = "img_test_01"
//            }
            cellModel.innTitle = "inn_\(t)"
            
            innListView.listDataSource!.sectionSource[0].append(cellModel)
        }
//        innListView.listDataSource?.sectionSource = [[ICViewModel(), ICViewModel(), ICViewModel()]]
        /********--TEST--*********/
        
        innListView.snp.makeConstraints { (make) in
            make.top.left.bottom.right.equalTo(0)
        }
        
        innListView.didSelectedCell { (indexPath) in
            let vc = ICTopicListController()
            vc.hidesBottomBarWhenPushed = true
            self.navigationController!.pushViewController(vc, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
