//
//  ICTopicListController.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/17.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTopicListController: ICViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "话题列表"
        
        let topicListView = ICTopicListView.topicListView(frame: CGRect.zero)
        
        view.addSubview(topicListView)
        
        // 数据处理部分
        /********--TEST--*********/
        topicListView.listDataSource!.sectionSource.append([ICTopicListViewCellModel]())
        for t in 0..<100 {
            let cellModel = ICTopicListViewCellModel()
            
            cellModel.topicTitle = "topicTitle_\(t)"
            
            topicListView.listDataSource!.sectionSource[0].append(cellModel)
        }        
        /********--TEST--*********/
        
        topicListView.snp.makeConstraints { (make) in
            make.top.left.bottom.right.equalTo(0)
        }
        
        topicListView.didSelectedCell { (indexPath) in
            let vc = ICTopicDiscussionController()
            
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
