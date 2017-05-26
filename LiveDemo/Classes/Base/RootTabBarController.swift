//
//  RootTabBarController.swift
//  LiveDemo
//
//  Created by tuhaisheng on 2017/5/24.
//  Copyright © 2017年 tuhaisheng. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {
    let firstVC  = THSHomeViewController ()
    let secondVC = THSMainViewController ()
    let otherVC = THSRankViewController ()
    let profile = THSProfileViewController ()
    let discover = THSDiscoverViewController ()
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
        firstVC.tabBarItem = item1
        
        let custItemOne = THSCustUINavigationController(rootViewController: firstVC)
        
        let item2 : UITabBarItem = UITabBarItem (title: "第二页面", image: UIImage(named: "tabbar_sort"), selectedImage: UIImage(named: "tabbar_sort_selected"))
       secondVC.tabBarItem = item2
        
        let custItemTwo = THSCustUINavigationController(rootViewController: secondVC)
        
        
        let item3 : UITabBarItem = UITabBarItem (title: "第三页面", image: UIImage(named: "tabbar_other"), selectedImage: UIImage(named: "tabbar_other_selected"))
        otherVC.tabBarItem = item3
        
        let custItemThree = THSCustUINavigationController(rootViewController: otherVC)
        
        
        let item4 : UITabBarItem = UITabBarItem (title: "第四页面", image: UIImage(named: "tabbar_other"), selectedImage: UIImage(named: "tabbar_other_selected"))
       profile.tabBarItem = item4
       
        
        let custItemFour = THSCustUINavigationController(rootViewController: profile)
        custItemFour.title = "第四页面"
        
        let item5 : UITabBarItem = UITabBarItem (title: "第五页面", image: UIImage(named: "tabbar_other"), selectedImage: UIImage(named: "tabbar_other_selected"))
        discover.tabBarItem = item5
        let custItemFive = THSCustUINavigationController(rootViewController: discover)
        custItemFive.title = "第五页面"
        
        let tabArray = [custItemOne,custItemTwo,custItemThree,custItemFour,discover]
        self.viewControllers = tabArray
    }
}
