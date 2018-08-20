//
//  ICTopicDiscussionController.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/20.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICTopicDiscussionController: ICViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "话题讨论"
        
        let topicDiscussionView = ICTopicDiscussionView.topicDiscussionView(frame: CGRect.zero)
        
        view.addSubview(topicDiscussionView)
        
        // 数据处理部分
        /********--TEST--*********/
        topicDiscussionView.listDataSource!.sectionSource.append([ICTopicDiscussionCellModel]())
        for t in 0..<100 {
            
            let cellModel = ICTopicDiscussionCellModel()
            
            cellModel.topicDiscussionContent = "话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题话题_\(t)"
            
            topicDiscussionView.listDataSource!.sectionSource[0].append(cellModel)
        }
        /********--TEST--*********/
        
        topicDiscussionView.snp.makeConstraints { (make) in
            make.top.left.bottom.right.equalTo(0)
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
