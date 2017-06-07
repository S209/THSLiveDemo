//
//  RootTabBarController.swift
//  LiveDemo
//
//  Created by tuhaisheng on 2017/5/24.
//  Copyright © 2017年 tuhaisheng. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {
    let living = THSLiving ()
    let rangkVC = THSRankingController ()
    let findVC = THSFindController ()
    let profile = THSMeController ()
    override func viewDidLoad() {
        super.viewDidLoad()
       createSubViewControllers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension RootTabBarController{
    fileprivate func createSubViewControllers(){
        let item1 : UITabBarItem = UITabBarItem (title: "第一页面", image: UIImage(named: "tabbar_home"), selectedImage: UIImage(named: "tabbar_home_selected"))
        living.tabBarItem = item1
        
        let custItemOne = THSCustUINavigationController(rootViewController: living)
        
        let item2 : UITabBarItem = UITabBarItem (title: "第二页面", image: UIImage(named: "tabbar_sort"), selectedImage: UIImage(named: "tabbar_sort_selected"))
        rangkVC.tabBarItem = item2
        
        let custItemTwo = THSCustUINavigationController(rootViewController: rangkVC)
        
        
        let item3 : UITabBarItem = UITabBarItem (title: "第三页面", image: UIImage(named: "tabbar_other"), selectedImage: UIImage(named: "tabbar_other_selected"))
        findVC.tabBarItem = item3
        
        let custItemThree = THSCustUINavigationController(rootViewController: findVC)
        
        
        let item4 : UITabBarItem = UITabBarItem (title: "第四页面", image: UIImage(named: "tabbar_other"), selectedImage: UIImage(named: "tabbar_other_selected"))
       profile.tabBarItem = item4
       
        
        let custItemFour = THSCustUINavigationController(rootViewController: profile)
        custItemFour.title = "第四页面"
        
        
        let tabArray = [custItemOne,custItemTwo,custItemThree,custItemFour]
        self.viewControllers = tabArray
    }
}
