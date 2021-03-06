//
//  ICPersonalCenterController.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/15.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICPersonalCenterController: ICViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "个人中心"
        
        let personalCenterContentView = ICPersonalCenterView.personalCenterView(frame: CGRect.zero)
        
        view.addSubview(personalCenterContentView)
        
        // 数据处理部分
        /********--TEST--*********/
        
        (personalCenterContentView.listDataSource as! ICPersonalCenterDataSource).testMakeData()
//        personalCenterContentView.listDataSource!.sectionSource.append([ICPersonalCenterCellModel]())
//        for _ in 0..<10 {
//            let cellModel = ICPersonalCenterCellModel()
//
//            personalCenterContentView.listDataSource!.sectionSource[0].append(cellModel)
//        }
        /********--TEST--*********/
        
        personalCenterContentView.snp.makeConstraints { (make) in
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
