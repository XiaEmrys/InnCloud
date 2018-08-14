//
//  ICMainTabBarController.swift
//  InnCloud
//
//  Created by Emrys on 2018/8/14.
//  Copyright © 2018年 Emrys. All rights reserved.
//

import UIKit

class ICMainTabBarController: UITabBarController {

    
    static func mainTabBarController() -> ICMainTabBarController {
        
        let mainTabBarCtrl = ICMainTabBarController()
        
        mainTabBarCtrl.initialChildren()
        
        return mainTabBarCtrl
    }
    
    private func initialChildren() {
        
        addChildViewController(ICNavigationControllerr(rootViewController: ICViewController()))
        addChildViewController(ICViewController())
        addChildViewController(ICNavigationControllerr(rootViewController: ICViewController()))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
