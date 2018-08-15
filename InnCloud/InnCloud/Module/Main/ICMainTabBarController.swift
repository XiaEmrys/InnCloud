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
        
        mainTabBarCtrl.tabBar.tintColor = UIColor.darkGray
        mainTabBarCtrl.initialChildren()
        
        return mainTabBarCtrl
    }
    
    private func initialChildren() {
        
//        addChildViewController(ICNavigationControllerr(rootViewController: ICRecommendationController()))
//        addChildViewController(ICRecommendationController())
//        addChildViewController(ICNavigationControllerr(rootViewController: ICViewController()))
        addChildInnController(ICRecommendationController(), tabBarTitle: "推荐", imageName: "icon_home_unclick", selectedImage: "icon_home_light")
        addChildInnController(ICPertinentController(), tabBarTitle: "关注", imageName: "icon_special_unclick", selectedImage: "icon_special_click")
        addChildInnController(ICPersonalCenterController(), tabBarTitle: "我", imageName: "icon_mine_unclick", selectedImage: "icon_mine_click")
    }
    
    private func addChildInnController(_ childController: UIViewController, tabBarTitle: String, imageName: String, selectedImage: String) {
        childController.tabBarItem.title = tabBarTitle
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImage)
        
        addChildViewController(ICNavigationControllerr(rootViewController: childController))
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
